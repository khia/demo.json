APP=$(shell ls src/*.app.src | sed -e 's/src\///g' | sed -e 's/.app.src//g')
NODE=$(subst .,_,$(APP))

all: compile

rebar:
# The officiial version has problem with running hooks
#	wget http://hg.basho.com/rebar/downloads/rebar
	mkdir -p REBAR
	cd REBAR ; git clone git@github.com:khia/rebar.git ; cd rebar ; ./bootstrap
	cp REBAR/rebar/rebar .
	chmod u+x rebar
	rm -rf REBAR

deps: rebar
	./rebar get-deps

compile: deps
	./rebar compile

console: compile
	scripts/start-dev.sh

clean:
	./rebar clean