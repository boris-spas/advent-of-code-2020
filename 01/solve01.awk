{ data[NR] = $0 }

END {
    for (i = 1; i <= NR; i++) {
        for (j = i; j <= NR; j++) {
            if (data[i] + data[j] == 2020) {
                print data[i] * data[j];
            }
        }
    }
}
