.PHONY: install lint test converge verify clean destroy reset

install:
	@type poetry >/dev/null || pip3 install poetry
	@poetry install

lint:
	poetry run yamllint .
	poetry run ansible-lint .
	poetry run molecule syntax

test: install lint
	poetry run molecule test

converge:
	MONGODB_FIREWALL_STATE=stopped poetry run molecule converge

verify:
	poetry run molecule verify

clean: destroy reset

destroy:
	poetry run molecule destroy

reset:
	poetry run molecule reset
