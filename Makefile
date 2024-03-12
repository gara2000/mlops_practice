PYTHON := python3
PIP := pip3
LINTER := pylint
TEST_RUNNER := pytest

install:
	$(PIP) install --upgrade pip && \
		pip install -r requirements.txt

lint:
	$(LINTER) --disable=R,C add.py

test:
	$(TEST_RUNNER) test_add.py 
