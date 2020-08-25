test-python:
	pytest --cov=./ --cov-report=xml


test-js:
	npm run test


report-artifacts:
	curl https://deepsource.io/cli | sh; \
	./bin/deepsource report --analyzer test-coverage --key javascript --value-file ./coverage/cobertura-coverage.xml; \
	./bin/deepsource report --analyzer test-coverage --key python --value-file ./coverage.xml
