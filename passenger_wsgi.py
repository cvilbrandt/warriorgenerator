import sys, os
INTERP = os.path.join(os.environ['HOME'], 'starclan.cvilbrandt.com', 'venv', 'bin', 'python3')
if sys.executable != INTERP:
        os.execl(INTERP, INTERP, *sys.argv)
sys.path.append(os.getcwd())

sys.path.append('app')
from app import flask_app as application