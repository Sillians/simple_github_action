install:
		pip install --upgrade pip &&\
			pip install -r requirements.txt

# Efficient full-featured python testing tool that helps to write better programs
test:
		python -m pytest -vv test_hello.py

# black is the uncompromising python code formatter, used to control over minutiae of hand-formatting.
# black gives speed, determinism, and freedom from pycodestyle nagging about formatting.
format:
		black *.py

# pylint is a python static code analysis tool which looks for programming errors, helps enforcing a coding standard,
# sniffs for code smells and offers simple refactoring suggestions.
lint:
		pylint --disable=R,C hello.py

all: install lint test
