GNAT:=gnatmake
FLAGS:=-gnatwa -gnat2022
.PHONY: all test clean
all:
	mkdir -p obj bin
	$(GNAT) $(FLAGS) -Pinterrupts_topic.gpr
test: all
	@bin/tests
clean:
	rm -rf obj bin
