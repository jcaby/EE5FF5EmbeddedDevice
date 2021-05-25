#include <stdio.h>

int unique_elements(int arr[]) {

    int len = sizeof(arr)/sizeof(*arr);

    int counted[len], j, n, count, flag;

    counted[0] = arr[0];

    count = 1;/*one element is counted*/

    for(j=0; j <= len-1; ++j) {
        flag = 1;;
        /*the counted array will always have 'count' elements*/
        for(n=0; n < count; ++n) {
            if(arr[j] == counted[n]) {
                flag = 0;
            }
        }
        if(flag == 1) {
            ++count;
            counted[count-1] = arr[j];
        }
    }
    return count;
}


int main(void) {
    int arr[] = {1,2,3,4,1,2,3,4,5,6,1,2,3,4,5,6,7,1,2,3,4,5,6,7,8};

    printf("%d", unique_elements(arr));
    return 0;
}