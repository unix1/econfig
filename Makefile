REBAR?=./rebar

all: build

dev: devbuild

doc: dev
	$(REBAR) -C rebar_dev.config doc

clean:
	$(REBAR) clean

distclean: clean
	@rm -rf deps

build: deps
	$(REBAR) compile

deps:
	$(REBAR) get-deps

test: build
	$(REBAR) skip_deps=true eunit

# development
#
devclean:
	$(REBAR) -C rebar_dev.config clean

devbuild: devdeps
	$(REBAR) -C rebar_dev.config compile

devdeps:
	$(REBAR) -C rebar_dev.config get-deps


.PHONY: doc deps test
