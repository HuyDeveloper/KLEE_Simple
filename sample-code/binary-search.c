void print_data(int arr[], int size, int target) {
    printf("searching for %d in:\n[", target);
    for (int i=0; i < size-1; i++) {
        printf("%d, ", arr[i]);
    }
    printf("%d]\n", arr[size-1]);
}
 
int binary_search(int arr[], int size, int target) {
    print_data(arr, size, target);
    int low = 0;
    int high = size - 1;
    int mid;
    while (low <= high) {
        mid = (low + high)/2;
        if (arr[mid] == target) {
            return mid;
        }
        if (arr[mid] < target) {
            low = mid + 1;
        }
        if (arr[mid] > target) {
            high = mid - 1;
        }
    }
    return -1;
}
