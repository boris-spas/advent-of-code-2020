BEGIN {
    i1 = 0;
    i3 = 0;
    i5 = 0;
    i7 = 0;
    i12=0;
}

{
    split($0, map, "");

    if (map[i1+1] == "#") {
        count1++;
    }
    i1 = ((i1 + 1) % length(map))

    if (map[i3+1] == "#") {
        count3++;
    }
    i3 = ((i3 + 3) % length(map))

    if (map[i5+1] == "#") {
        count5++;
    }
    i5 = ((i5 + 5) % length(map))

    if (map[i7+1] == "#") {
        count7++;
    }
    i7 = ((i7 + 7) % length(map))

    if (NR % 2 == 1) {
        if (map[i12+1] == "#") {
            count12++;
        }
        i12 = ((i12 + 1) % length(map))
    }
}

END {
    print count1 * count3 * count5 * count7 * count12
}
