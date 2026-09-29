default:
	git pull
	ansible-playbook -i ${COMPONENT}-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=${COMPONENT}

all: frontend postgresql auth-service portfolio-service analytics-service

database: postgresql
apps: frontend auth-service portfolio-service analytics-service

frontend:
	ansible-playbook -i frontend-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=frontend
postgresql:
	ansible-playbook -i postgresql-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=postgresql
auth-service:
	ansible-playbook -i auth-service-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=auth-service
portfolio-service:
	ansible-playbook -i portfolio-service-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=portfolio-service
analytics-service:
	ansible-playbook -i analytics-service-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=analytics-service