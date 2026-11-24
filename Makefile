CC = gcc

CFLAGS = -Wall -Wextra -Werror

TARGET = final

SRC = Age_data/main.c \
      choix_utilisateur.c \
      
	  
OBJ = $(SRC:.c=.o)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(TARGET)

%.o: %.c projet.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

re: clean $(TARGET)

run: $(TARGET)
	./$(TARGET)