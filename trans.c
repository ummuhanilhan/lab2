
int transpose(int *o, int *a, int n, int m){

    int i,j;
    for (i=0; i<n; i++){
        for (j=0; j<m; j++){
            o[i*m+j]= a[j*n+i];

        }
    }
    return 0;
}