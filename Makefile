.PHONY: reports test

ifeq ($(OS),Windows_NT)
PYTHON = .\penv\Scripts\python.exe
PIP = .\penv\Scripts\pip.exe
else
PYTHON = ./penv/bin/python3
PIP = ./penv/bin/pip3
endif

jenv:
	julia setup.jl

penv:
	python3 -m venv penv
	$(PIP) install -U pip setuptools wheel
	$(PIP) install -r requirements.txt
	$(PIP) install .

renv:
	Rscript --vanilla setup.R
	
clean:
	rm -fr penv
	rm -fr renv

reports: venv renv
	# Stuff

test: venv renv
	$(PYTHON) -m unittest ./tests