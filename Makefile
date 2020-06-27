can:
	cc -std=c89 -o can can.c

install: can
	install can /usr/local/bin
