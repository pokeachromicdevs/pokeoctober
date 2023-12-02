all:
	nimble -d:danger --nimCache:generated --genScript build
	cd generated && rm *.sha1 *.json *.deps

clean:
	rm -rf generated