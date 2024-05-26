build:
	docker build -t akatsuki-pypi:latest .

run:
	docker run -it -p 3141:3141 akatsuki-pypi:latest
