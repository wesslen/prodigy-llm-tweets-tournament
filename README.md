
# Prodigy Tournament on Created Tweets: Inform or Virality

![](img/prodigy.png)

This project is an experiment on generated tweets with a tournament on two prompts.

Prompt 1 is intended to educate and inform the reader on a topic.

```
Assume you are a social media manager whose role is to generate tweets.

Write a tweet about {{topic}} in the scenario of {{scenario}}.

The tweet is intended to educate the reader.

Limit the tweet to 280 characters.
```

Prompt 2 is intended to elicit attention with the goal to become viral and get more likes.

```
Assume you are a social media manager whose role is to generate tweets.

Write a tweet about {{topic}} in the scenario of {{scenario}}.

The tweet is intended to become viral and elicit as many likes as possible.

Limit the tweet to 280 characters.
```

There were five themes created, each with five topics and scenarios.

1. Current Affairs and News (`"id": 0`)
2. Social Causes and Activism (`"id": 1`)
3. Business and Entrepreneurship (`"id": 2`)
4. Personal Finance and Investing (`"id": 3`)
5. Government Policies and Political Awareness (`"id": 4`)

You can view the topics/scenarios in the `topics.jsonl` file. Here is an example:
```
{"id": 0, "prompt_args": {"topic": "minimum wage", "scenario": "An upcoming bill is up for debate in the US Congress"}}
{"id": 0, "prompt_args": {"topic": "COVID-19 vaccine distribution", "scenario": "A new COVID-19 vaccine distribution plan is being implemented in a country"}}
{"id": 0, "prompt_args": {"topic": "trade tariffs", "scenario": "Two countries are engaging in a trade war, imposing tariffs on each other's goods"}}
{"id": 0, "prompt_args": {"topic": "income inequality", "scenario": "A report reveals the growing wealth gap between the rich and the poor"}}
{"id": 0, "prompt_args": {"topic": "immigration policies", "scenario": "A country is considering implementing stricter immigration policies"}}
{"id": 1, "prompt_args": {"topic": "climate change activism", "scenario": "Youth-led climate change activists organize a global strike for climate action"}}
{"id": 1, "prompt_args": {"topic": "gender equality movements", "scenario": "A women's rights movement advocates for equal pay and opportunities"}}
{"id": 1, "prompt_args": {"topic": "racial justice campaigns", "scenario": "Protests erupt following an incident of racial discrimination and police violence"}}
{"id": 1, "prompt_args": {"topic": "LGBTQ+ rights advocacy", "scenario": "A country introduces legislation to legalize same-sex marriage"}}
{"id": 1, "prompt_args": {"topic": "mental health awareness", "scenario": "A campaign is launched to destigmatize mental health issues and promote access to mental healthcare"}}
```

## Setup

Create `.env` file with:

```
PRODIGY_KEY=xxxx-xxxx-xxxx-xxxx
PRODIGY_OPENAI_KEY="sk-xxxxxxxxxxxxxxx"
PRODIGY_OPENAI_ORG="org-xxxxxxxxxxxxxx"
```

Create a new virtual environment:

```
python3.9 -m venv venv
source venv/bin/activate
```

To install packages, run:

```
spacy project run install
```

## Run tournament

To run the tournament, run:

```
spacy project run prodigy-tournament-tweets
```

This command runs:

```
prodigy ab.openai.tournament tweets-tournament topics.jsonl display-template.jinja2 prompt_folder
```

<!-- SPACY PROJECT: AUTO-GENERATED DOCS START (do not remove) -->

# 🪐 spaCy Project: Prodigy LLM Prompt Tournament on Generating Tweets: Inform or Virality

This project runs a prompt tournament con generating tweets using
different prompts for given topics and scenarios.


## 📋 project.yml

The [`project.yml`](project.yml) defines the data assets required by the
project, as well as the available commands and workflows. For details, see the
[spaCy projects documentation](https://spacy.io/usage/projects).

### ⏯ Commands

The following commands are defined by the project. They
can be executed using [`spacy project run [name]`](https://spacy.io/api/cli#project-run).
Commands are only re-run if their inputs have changed.

| Command | Description |
| --- | --- |
| `install` | Install packages |
| `clean-files` | Clean all files in data/ folder |
| `clean-venv` | Remove the virtual environment |
| `clean-prodigy-tweets` | Drop the tweets dataset from Prodigy |
| `generate-topics` | Generate topics for tweet generation |
| `prodigy-tweets` | A/B evaluation of prompts |
| `prodigy-tournament-tweets` | Prodigy tournament for tweet generation based on topics |

### ⏭ Workflows

The following workflows are defined by the project. They
can be executed using [`spacy project run [name]`](https://spacy.io/api/cli#project-run)
and will run the specified commands in order. Commands are only re-run if their
inputs have changed.

| Workflow | Steps |
| --- | --- |
| `setup` | `install` |
| `prodigy` | `prodigy-tournament-tweets` |

### 🗂 Assets

The following assets are defined by the project. They can
be fetched by running [`spacy project assets`](https://spacy.io/api/cli#project-assets)
in the project directory.

| File | Source | Description |
| --- | --- | --- |
| [`assets/topics.jsonl`](assets/topics.jsonl) | Local | Topics and scenarios to be generated |
| [`assets/prompt_folder/prompt1.jinja2`](assets/prompt_folder/prompt1.jinja2) | Local | Prompt instructing to inform the reader. The goal is education. |
| [`assets/prompt_folder/prompt2.jinja2`](assets/prompt_folder/prompt2.jinja2) | Local | Prompt instructing to attract the reader. The goal is virality. |

<!-- SPACY PROJECT: AUTO-GENERATED DOCS END (do not remove) -->