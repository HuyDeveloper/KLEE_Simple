#include <stdio.h>
#include <stdlib.h>

int compareArray(int *arr1, int size1, int *arr2, int size2) {
  // Kiểm tra độ dài mảng
  if (size1 != size2) {
    return -1;
  }

  // So sánh từng phần tử
  int count = 0;
  for (int i = 0; i < size1; i++) {
    if (arr1[i] == arr2[i]) {
      count++;
    }
  }

  return count;
}
int readFile(char *fileName, int *arr) {
  // Mở file
  FILE *file = fopen(fileName, "r");
  if (file == NULL) {
    printf("Lỗi mở file %s!\n", fileName);
    return -1;
  }

  // Đọc dữ liệu từ file và lưu vào mảng
  int size = 0;
  while (!feof(file)) {
    fscanf(file, "%d", &arr[size++]);
  }
  fclose(file);

  return size;
}

int main(int argc, char *argv[]) {
  // Kiểm tra số lượng tham số
  if (argc != 2) {
    printf("Sai số lượng tham số!\n");
    return 1;
  }

  // Xác định tên file dựa trên tham số
  char *input = argv[1];
  char file1[20], file2[20];
  sprintf(file1, "output/%s.output.clone.txt", argv[1]);
  sprintf(file2, "output/%s.output.txt", argv[1]);

  // Khai báo 2 mảng
  int arr1[100], arr2[100];

  // Đọc dữ liệu từ 2 file
  int size1 = readFile(file1, arr1);
  int size2 = readFile(file2, arr2);

  // So sánh 2 mảng và in ra số cặp trùng nhau
  int count = compareArray(arr1, size1, arr2, size2);
  if (count == -1) {
    printf("Error!\n");
  } else {
    printf("Input cua function: %s", argv[1]);
    printf("So cap trung nhau: %d\n", count);
    printf("So cap trung/Tong so cap: %d / %d \n", count, size1 -1);
  }

  return 0;
}
