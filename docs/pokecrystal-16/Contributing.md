# Contributing to this project

There are several ways to contribute, most of which involve some activity outside of this repository. The best ways to
help this project move forward are:

* [Testing](#testing): it's critical to test the changes made here. Most of the changes are very far-reaching and thus
  require some very comprehensive testing. Going through an entire playthrough is the bare minimum.
* [Documenting](#documenting): it's hard to make documentation that other people can understand and follow, but that
  documentation is key to make the project accessible.
* [Porting](#porting): the main goal of this repository is to make an engine, so porting that engine into actual games
  helps it serve its purpose. It's useful as a stress test, it means that the person porting it can help document the
  process, and it makes the engine more well-known.

Of course, there's also the possibility of contributing with [code](#coding). However, the main areas where help is
needed are the three listed above.

### Testing

In order to ensure that the index translation system works properly, thorough testing is necessary. Testing should
always aim to discover flaws, not to validate existing behavior; validation is only achieved through failure to
uncover undesirable behaviors.

If you want to help testing the engine, the following list should serve as a guide:

* Make sure that every part of the game that seems to use indexes works properly. For instance, when testing Pokémon
  indexes, check every feature where the Pokémon species is relevant — wild and trainer Pokémon generation, PC
  deposits and withdrawals, evolutions, etc.
* Be aware of the aliasing problem. If an index is incorrectly converted (or not converted at all), it will alias some
  other object. When conversion from 8-bit to 16-bit is forgotten, this will generally be a low index; in the opposite
  case, it can be any index, arising from truncation. Detecting "wrong index" situations (for instance, expecting to
  see a specific Pokémon in a trainer's party and finding a different one) is the most important goal of testing.
* Test as many situations as you can. Save often, change PC boxes, win the game, black out, start a new game, release
  a Pokémon, etc. Try to test obscure paths and features as well (such as attempting to send out an egg in battle).
* Attempt to document reproduction steps as accurately as possible. A bug that cannot be reproduced is almost
  impossible to fix. If a specific savefile is needed, provide it.
* Don't ignore minor bugs simply because they seem minor, unless they are also present (and identical) in the original
  game. Any bug is worth fixing.

You can test any branch of the repository, although the `master` branch will probably not need any testing at all.
Ideally, all branches should be functional.

### Documenting

Documentation helps other people access and use the engine. Without documentation, most of the work is worthless, as
it would not be able to fulfill its main goal of being a reusable component.

If you want to improve the documentation, start by reading it and finding which spots are lacking. Both corrections on
existing pages and completely new pages are acceptable. All pages should be reachable by clicking on some sequence of
links starting at the main page; in other words, if you create a new page, make sure to link it somewhere from an
existing page. Any documentation fix is worthwhile: if you see something minor such as a typo or a grammatical error,
feel free to correct it.

GitHub stores the wiki in a repository, which can be cloned using the URI displayed to the right of every page.
However, this repository cannot accept pull requests. Therefore, if you want to submit corrections to the wiki, make
a local clone of the wiki repository, commit to it, and prepare a patch using `git format-patch` on your commits; once
you have the patch file, upload it somewhere persistent (such as a [GitHub Gist](https://gist.github.com)) and create
an issue in the main repository with a link to the uploaded patch file. If you just want to make some minor changes,
you can also simply make an issue and list the changes while linking to the relevant pages.

Markdown files in the wiki are limited to 118 characters per line; try to adhere to this limit when making changes.
Links can be inline or in the footer; however, try to use footer links if the URI is long, so the line length limit
will not be a problem. If a link is very long, even a footer link will go above 118 characters; this is an acceptable
exception to the line length limit. (If you don't know how footer links work, look at the source for existing pages.)

Try to make your text as clear and readable as possible. Ensure that your grammar and spelling are at their best, as
they make communication easier. Many of us are not native English speakers; don't let that deter you, but do make an
effort to write as properly as possible. Textspeak and similar incomprehensible abbreviations are forbidden and will
result in rejected patches; the text doesn't have to be formal, but it should strive to be correctly written.

### Porting

The main goal of this project is to make a reusable engine. If the engine cannot be ported, the project is useless.
Thus, porting the engine to an existing ROM hack ensures that the project can fulfill its goal.

Remember that just having 16-bit indexes in your ROM hack doesn't mean you have to use them right away. In fact,
porting the 16-bit engine should be done ahead of time. Keep in mind that porting the engine will break savefile
compatibility; plan ahead of that.

Porting the engine allows you to help with the previous two items. Once the engine is ported to a real game, it can be
tested in more realistic conditions. It can also help improve the porting documentation, which is the most important
part for those who want to include the engine in their own games.

### Coding

Writing code can also be a useful way of contributing, particularly if you don't have the time or the inclination to
do any of the three things listed above. New code can keep the project going and extend its functionality.

If you want to contribute code to a new branch, make sure to note on top of which branch it is built, and to keep the
commits on your new branch clear, as the commits themselves are part of the project's documentation. Make sure to
rebase your changes onto the latest version of your base branch before submitting them, and keep the commit log for
your branch clean. Look at existing branches and follow the style you see. Rewriting commit history is not a problem
for this repository, as it is mostly intended as a reference, not to be cloned or forked except by contributors.

If you want to contribute code to an existing branch, when making changes, you'll have to specify where in the commit
history those changes should be made; if the changes go into new commits, you will have to state where in the commit
history those new commits should be inserted. Once you have figured out where in the commit history you want to make
changes, check out that specific commit and start making changes on top. Make sure that commits _above_ the one you
checked out can be rebased on top of your changes; if they can't be, solve any conflicts that arise.

Note that pull requests are very impractical for this repository's purposes. You cannot make a pull request on a new
branch, and if you want to make changes to an existing branch, any changes you make will almost certainly conflict
with the existing commit history (since you will almost certainly rewrite some commits), which will cause the pull
request to be non-fast-forward and thus impractical to merge. Don't use pull requests — if you want to make changes,
make them in a local copy of the repository and submit them in an issue using `git format-patch` in the same way that
is described for documentation changes above. For this reason, you should have no need to fork the repository; try to
not do that, as your fork will almost invariably fall out of date with respect to the main repository due to the
constant commit history rewrites.
