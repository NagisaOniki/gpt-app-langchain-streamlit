IMAGE_NAME = gpt_run
CMD = bash
KEY_JSON_FILE = account.json

build:
	docker build -t ${IMAGE_NAME} .
	
run:
	docker run --env-file=env/account.txt -p 8501:8501 -it --rm ${IMAGE_NAME} ${CMD}
	