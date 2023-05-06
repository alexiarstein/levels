// Levels by Alexia Rivera <alexia.sadc@gmail.com>
// This is free software licensed under a GNU GPL 3.0 License
// See LICENSE for more information.
// Source file. Requires gcc
// ----------------------------------------------------------
#include <stdio.h>
#include <sys/stat.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <file or directory>\n", argv[0]);
        return 1;
    }

    const char *path = argv[1];
    struct stat st;

    if (stat(path, &st) == -1) {
        perror("stat");
        return 1;
    }

    printf("CHMOD Level: %o\n", st.st_mode & 0777);
    return 0;
}
