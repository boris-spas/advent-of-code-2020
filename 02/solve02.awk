# Example input line
# 2-6 w: wkwwwfwwpvw

{
    split($1, bounds, "-");
    split ($2, tmp, ":");
    char = tmp[1];
    split($3, chars, "");
    if ((chars[bounds[1]] == char || chars[bounds[2]] == char) &&
         !(chars[bounds[1]] == char && chars[bounds[2]] == char)) {
        globalCount++;
    }
}

END {
    print globalCount;
}
