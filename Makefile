default:
	git pull
	ansible-playbook -i ${COMPONENT}-dev.sumantanil11.online, -e "ansible-user=ec2-user ansible-password=DevOps321" main.yaml -e COMPONENT=${COMPONENT}