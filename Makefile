
stack_name := ryuichi-io
template_file := cloudformation.yaml
acm_region := us-east-1

.PHONY: apply
apply:
	aws cloudformation deploy --stack-name $(stack_name) --template-file $(template_file) --region $(acm_region)

.PHONY: delete
delete:
	aws cloudformation delete --stack-name $(stack_name) --region $(acm_region)
