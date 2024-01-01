#!/bin/bash

echo "Compiling guidebook"

if [ ! -e .venv ]; then
  python3 -m venv .venv || exit 1
fi

source .venv/bin/activate

if [ ! -e .venv/req_installed ]; then
  pip install -r requirements.txt || exit 1
  touch .venv/req_installed
fi

python3 make_pdf.py | weasyprint -O all -dv - manual.pdf
