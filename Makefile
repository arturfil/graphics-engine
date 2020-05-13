# If you want to use lldb use the debug make command
# run lldb <outfile>, setup a break point and then enter: run
# n for next, print <variable_name> to see variables.

# Note! If you are using various files as dependencies
# Like we are here with .c files use the "$^" to compile all files!

CC=gcc -Wall -std=c99 -lSDL2 -lm
EXEC_FILE=renderer
C_FILES= ./src/*.c

all: $(EXEC_FILE) run

debug: $(C_FILES)
	$(CC) -g -o $(EXEC_FILE) $< $(H_FILES)

$(EXEC_FILE): $(C_FILES)
	$(CC) $^ -o $@  $(H_FILES)

run:
	./$(EXEC_FILE)

clean:
	rm -rf $(EXEC_FILE) renderer.dSYM