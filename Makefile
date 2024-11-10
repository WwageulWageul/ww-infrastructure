PROVIDER ?= aws
ENV ?= dev
DIR = $(PWD)/$(PROVIDER)/envs/$(ENV)/ww_$(REGION)

init: 
	cd $(DIR) && terraform init && cd -

apply:
	cd $(DIR) && terraform apply -auto-approve && cd -

destroy:
	cd $(DIR) && terraform destroy -auto-approve && cd -

.PHONY: init apply destroy