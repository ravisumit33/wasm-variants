#include <stdio.h>

int main()
{
    try {
        throw 1;
    } catch (...) {
        printf("Exception!!");
    }
}
