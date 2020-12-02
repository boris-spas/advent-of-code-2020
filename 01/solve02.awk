{ data[NR] = $0 }

END {
    for (i = 1; i <= NR; i++) {
        for (j = i; j <= NR; j++) {
            for (k = i; k <= NR; k++) {
                if (data[i] + data[j] + data[k] == 2020) {
                    print data[i] * data[j] * data[k];
                }
            }
        }
    }
}
