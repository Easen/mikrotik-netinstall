all: build-6.47.10 build-6.48.4 build-6.49beta54 build-7.1rc3

build-%:
	docker build --build-arg VERSION=$* --tag easen/mikrotik-netinstall:$* . 
	docker push easen/mikrotik-netinstall:$*
