import os
import subprocess
import tempfile


_dir = os.path.dirname(os.path.abspath(__file__))


def update_go():
    with tempfile.TemporaryDirectory() as tempdir:
        env = os.environ.copy()
        env['GOPATH'] = tempdir
        cwd = f'{_dir}/golang/gomod'
        subprocess.run(['go', 'mod', 'download'], env=env, cwd=cwd)
        subprocess.run(['go', 'list', '-m', '-json', 'all'], env=env, cwd=cwd, stdout=None)
