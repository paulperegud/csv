all: compile

compile:
	rebar compile

clean:
	rebar clean

test: compile
	rebar eunit $(SUITES:%=suites=%) $(TESTS:%=tests=%)

doc:
	rebar doc

run: compile
	erl +sbt db -pa $(CURDIR)/ebin

.PHONY: all compile clean test doc run
