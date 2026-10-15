default:
	git pull
	ansible-playbook -i ${COMPONENT}-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=${COMPONENT}

all: frontend postgresql auth-service portfolio-service analytics-service

database: postgresql
apps: frontend auth-service portfolio-service analytics-service

frontend:
	ansible-playbook -i frontend-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=frontend -e env=dev
postgresql:
	ansible-playbook -i postgresql-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=postgresql -e env=dev
auth-service:
	ansible-playbook -i auth-service-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=auth-service -e env=dev
portfolio-service:
	ansible-playbook -i portfolio-service-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=portfolio-service -e env=dev
analytics-service:
	ansible-playbook -i analytics-service-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=analytics-service -e env=dev