CC = gcc

CFLAGS = -Wall -Wextra -Werror -I.

AGE = age
CRASH = crash
YEAR = year

NAME = crashTech

SRC = $(wildcard Age_data/*.c) \
      $(wildcard Crash_data/*.c) \
      $(wildcard Year_data/*.c)

all: $(NAME) 

$(NAME): $(SRC) projet.h
	$(CC) $(CFLAGS) $(SRC) -o $(NAME)



clean:
	rm -f $(NAME) 

re: clean all
