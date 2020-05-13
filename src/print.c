#include "print.h"

void print_message(char msg[] ) {
  printf("%s as char[]\n", msg);
}

void print_ptr_message(char *msg) {
  printf("%s as ptr\n", msg);
}