include .env

create-venv:
	( \
		python3 -m venv venv; \
		source venv/bin/activate; \
	)

install:
	python3 -m pip install --upgrade pip
	python3 -m pip install -r requirements.txt
	python3 -m pip install prodigy==1.12a1 -f "https://${PRODIGY_KEY}@download.prodi.gy"

clean-cache:
	rm -rf */__pycache__/*
	rm -rf .ipynb_checkpoints

clean-files:
	rm -rf data/*

clean-venv:
	rm -rf venv

clean-prodigy:
	python3 -m prodigy drop tweets

prodigy-tweets:
	prodigy ab.openai.prompts tweets topics.jsonl display-template.jinja2 prompt_folder/prompt1.jinja2 prompt_folder/prompt2.jinja2 --repeat 4

prodigy-tournament-tweets:
	prodigy ab.openai.tournament tweets-tournament topics.jsonl display-template.jinja2 prompt_folder
