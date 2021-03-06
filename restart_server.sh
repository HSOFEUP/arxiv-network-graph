#!/bin/bash

. venv/bin/activate
git pull
pids=$(pgrep python)
kill -9 $pids
python serve.py --prod --port 80 &