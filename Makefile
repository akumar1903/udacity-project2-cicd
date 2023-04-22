setup:
	python3 -m venv ~/.udacity-project2

install:
	pip3 install --upgrade pip &&\
		pip3 install -r requirements.txt
test:
	python -m pytest -vv test_hello.py

lint:
	pylint --disable=R,C,E1120 hello.py

all:	install lint test
