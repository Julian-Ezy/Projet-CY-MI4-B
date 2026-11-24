CC = gcc

CFLAGS = -Wall -Wextra -Werror -I.

AGE = age
CRASH = crash
YEAR = year

SRC_AGE = $(wildcard Age_data/*.c)
SRC_CRASH = $(wildcard Crash_data/*.c)
SRC_YEAR = $(wildcard Year_data/*.c)

all: $(AGE) $(CRASH) $(YEAR)

$(AGE): $(SRC_AGE) projet.h
	$(CC) $(CFLAGS) $(SRC_AGE) -o $(AGE)

$(CRASH): $(SRC_CRASH) projet.h
	$(CC) $(CFLAGS) $(SRC_CRASH) -o $(CRASH)

$(YEAR): $(SRC_YEAR) projet.h
	$(CC) $(CFLAGS) $(SRC_YEAR) -o $(YEAR)

# Execution
run_age: $(AGE)
	./$(AGE)

run_crash: $(CRASH)
	./$(CRASH)

run_year: $(YEAR)
	./$(YEAR)

# Nettoyage
clean:
	rm -f $(AGE) $(CRASH) $(YEAR)

# Recompilation complete
re: clean all
