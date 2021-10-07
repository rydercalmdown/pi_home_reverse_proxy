.PHONY: connect
connect:
	@echo "Establishing a remote connection with the site";
	@cd scripts && bash establish_remote_connection.sh

.PHONY: install-pi
install-pi:
	@cd scripts && bash install_pi.sh
