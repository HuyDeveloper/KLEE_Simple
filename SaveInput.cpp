#include <iostream>
#include <fstream>
#include <cstring>
using namespace std;

template <class T>

void saveFile(T data, char filename[]) {
    ofstream file;
    file.open (filename, ios::app);
    file << data << "\n";
    file.close();
}

template <class T>

void saveArrayFile(T data, char filename[]) {
    ofstream file;
    file.open (filename, ios::app);
    int i = 0;
    while (i < 100) {
        file << data[i] << " ";
        i++;
    }
    file << "\n";
    file.close();
}
