ENV ?= dev
DIR = $(ENV)/ww_$(ENV)_apnortheast2

init: 
	cd $(DIR) && terraform init

apply:
	terraform apply -auto-approve

destroy:
	terraform destroy -auto-approve

.PHONY: init apply destroy