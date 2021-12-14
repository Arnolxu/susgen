build: susgen.v
	v susgen.v

install: susgen
	sudo cp susgen /usr/bin/susgen