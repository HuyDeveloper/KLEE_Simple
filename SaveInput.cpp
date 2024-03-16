#include <iostream>
#include <fstream>
#include <cstring>
#include <ctime>
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

void logMessage(const std::string& message) {
    ofstream logFile("log.txt", ios_base::app); // Mở tập tin log.txt với chế độ "append"

    if (!logFile.is_open()) {
        cout << "Không thể mở tập tin log." << endl;
        return;
    }

    // Lấy thời gian hiện tại
    time_t now = time(nullptr);
    char* timeString = ctime(&now);

    // Ghi thông điệp và thời gian vào tập tin log
    logFile << "[" << timeString << "] " << message << endl;

    logFile.close(); // Đóng tập tin
}
