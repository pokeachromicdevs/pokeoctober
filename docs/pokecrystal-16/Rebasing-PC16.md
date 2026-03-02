# Rebasing onto `pret/pokecrystal`

This document records the steps for refreshing every branch in this repo on top of the current [`pret/pokecrystal`](https://github.com/pret/pokecrystal) `master` branch. The branches form a linear stack, so each branch must be rebased in order:

```
master <- base-components <- expand-mon-ID <- expand-move-ID <- newbox
master <- base-components <- expand-mon-ID <- expand-move-ID <- expand-item-ID <- item-newbox
```

`pokecrystal` is a local copy of `pret/pokecrystal/master` and acts as the upstream anchor.

## Preparation

1. Add or update the upstream remote:
   ```sh
   git remote add pret https://github.com/pret/pokecrystal.git  # skip if it already exists
   git fetch pret master
   ```
2. Refresh the local `pokecrystal` branch so it exactly matches upstream:
   ```sh
   git checkout pokecrystal
   git reset --hard pret/master
   ```
3. Make sure your worktree is clean before moving on.

## General rebase recipe

For any branch that directly depends on another branch, gather two commits before running `git rebase --onto`:

- `OLD_PARENT`: the commit in the old history the branch used to start from (usually the last commit of the previous branch *before* it is rebased).
- `NEW_PARENT`: the updated tip of the previous branch after you finish rebasing it.

You can capture `OLD_PARENT` ahead of time with:

**Note:** If the parent branch has been rebased multiple times, the reflog
entry you need may not always be `@{1}`. You may need to use `@{2}`, `@{3}`,
etc., depending on how many times the branch tip changed. Run
`git reflog parent_branch` to locate the correct "pre-rebase" commit.

```sh
OLD_PARENT=$(git merge-base child_branch parent_branch)
```

Once `NEW_PARENT` exists (because the parent branch has been rebased), move the child:

```sh
git checkout child_branch
git rebase --onto NEW_PARENT "$OLD_PARENT"
```

If you run into conflicts, resolve them file by file, `git add` the fixed files, and continue with `git rebase --continue`. Use `git status` to confirm every staged change belongs to the current conflict; if you need to inspect the pre-rebase version, `git show OLD_PARENT -- path/to/file` can help.

After each branch lands in its new place, run a quick build to ensure nothing broke:

```sh
make crystal
```
Fix any regressions immediately so later branches inherit good bases.

## Step-by-step order

Work from the bottom of the stack up so every dependent branch always sees its parent already updated.

1. **Rebase `master` onto `pokecrystal`:**
   ```sh
   git checkout master
   OLD_PARENT=$(git merge-base master pokecrystal)
   git rebase --onto pokecrystal "$OLD_PARENT"
   ```
   After the fast-forward completes, run an interactive rebase to pause at the commit titled `Add a README`:
   ```sh
   git rebase -i --autosquash pokecrystal
   ```
   Mark `Add a README` as `edit`, then update `README.md` to reflect the new **Last PC16 rebase** date and the `pokecrystal` branch's **last update** date. Leave every other branch date unchanged unless that branch's feature set actually changed. Finish with `git add README.md` followed by `git rebase --continue`.
2. **Rebase `base-components` onto the new `master`:**
   ```sh
   git checkout base-components
   OLD_PARENT=$(git merge-base base-components master@{1})  # capture before rebasing master
   git rebase --onto master "$OLD_PARENT"
   ```
3. **Rebase `expand-mon-ID` onto `base-components`:**
   ```sh
   git checkout expand-mon-ID
   OLD_PARENT=$(git merge-base expand-mon-ID base-components@{1})
   git rebase --onto base-components "$OLD_PARENT"
   ```
4. **Rebase `expand-move-ID` onto `expand-mon-ID`:**
   ```sh
   git checkout expand-move-ID
   OLD_PARENT=$(git merge-base expand-move-ID expand-mon-ID@{1})
   git rebase --onto expand-mon-ID "$OLD_PARENT"
   ```
5. **Rebase `newbox` onto `expand-move-ID`:**
   ```sh
   git checkout newbox
   OLD_PARENT=$(git merge-base newbox expand-move-ID@{1})
   git rebase --onto expand-move-ID "$OLD_PARENT"
   ```
6. **Rebase `expand-item-ID` onto `expand-move-ID`:**
   ```sh
   git checkout expand-item-ID
   OLD_PARENT=$(git merge-base expand-item-ID expand-move-ID@{1})
   git rebase --onto expand-move-ID "$OLD_PARENT"
   ```
7. **Rebase `item-newbox` onto `expand-item-ID`:**
   ```sh
   git checkout item-newbox
   OLD_PARENT=$(git merge-base item-newbox expand-item-ID@{1})
   git rebase --onto expand-item-ID "$OLD_PARENT"
   ```

> **Note:** the `@{N}` syntax references earlier positions in the parent
branch’s reflog. Usually this is `@{1}`, but if you had to rebase or amend the
parent branch multiple times, the correct entry may instead be `@{2}`,
`@{3}`, etc. Use `git reflog parent_branch` to determine which reflog entry
corresponds to the commit *before* the parent branch was rebased.

## Validation and sharing

- After the entire stack builds cleanly, run the full test suite or at least `make crystal` once more from the top branch (`item-newbox`).
- Force-push each branch once you are satisfied, preserving the branch order so downstream branches always see their updated parents:
  ```sh
  git push --force-with-lease origin branch_name
  ```

### Build failures and bisect triage

If a branch no longer builds after rebasing:

1. Run `git bisect start HEAD OLD_PARENT` inside that branch to locate the first bad commit.
2. Mark the current tip as bad (`git bisect bad`) and a known-good ancestor as good (`git bisect good SHA`).
3. Build each checked-out commit with `make crystal` until Git identifies the exact failing commit.
4. `git bisect reset` to return to the tip once the culprit is known.
5. Re-run `git rebase --edit` targeting that commit, fix the issue (or split the change), `git add` the fixes, then `git rebase --continue`.
6. Repeat the bisect/edit cycle until the branch builds cleanly all the way to the top, then proceed to the next branch.
