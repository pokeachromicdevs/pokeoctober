import subprocess, sys
from pathlib import Path

def git_info():
    describe = subprocess.check_output(
        ['git', 'describe', '--tags', '--abbrev=8', '--dirty=!'],
    ).decode().strip()
    parts = describe.split('-')
    version = parts[0]
    offset  = parts[1] if len(parts) > 1 else ''
    commit  = parts[2].lstrip('g') if len(parts) > 2 else ''
    return version, offset, commit

out = Path(sys.argv[1])
version, offset, commit = git_info()

out.write_text(
    f'GIT_VERSION EQUS "\\"{version}\\""\n'
    f'GIT_OFFSET EQUS "\\"{offset}\\""\n'
    f'GIT_COMMIT EQUS "\\"{commit}\\""\n'
    f'DISPLAY_DISCORD_LINK EQUS ""\n'
)