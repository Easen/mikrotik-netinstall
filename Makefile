all: build-6.48.6 build-6.49.2 build-6.49rc2 build-7.1

build-%:
	docker build --build-arg VERSION=$* --tag easen/mikrotik-netinstall:$* . 
	docker push easen/mikrotik-netinstall:$*
