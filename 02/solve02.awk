# Example input line
# 2-6 w: wkwwwfwwpvw

{
    count = 0
    split($1, bounds, "-");
    split ($2, tmp, ":");
    char = tmp[1];
    split($3, chars, "");
    for (i = 1; i <= length(chars); i++) {
        print chars[i]" "char
        if (chars[i] == char) {
            count++;
        }
    }
    if ((chars[bounds[1]] == char || chars[bounds[2]] == char) &&
         !(chars[bounds[1]] == char && chars[bounds[2]] == char)) {
        globalCount++;
    }
}

END {
    print globalCount;
}
