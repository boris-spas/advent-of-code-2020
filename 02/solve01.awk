# Example input line
# 2-6 w: wkwwwfwwpvw

{
    count = 0
    split($1, bounds, "-");
    split ($2, tmp, ":");
    char = tmp[1];
    split($3, chars, "");
    for (i = 1; i <= length(chars); i++) {
        if (chars[i] == char) {
            count++;
        }
    }
    if (bounds[1] <= count && count <= bounds[2]) {
        globalCount++;
    }
}

END {
    print globalCount;
}
