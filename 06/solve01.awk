BEGIN {
    RS="\n\n"
}

{
    delete questions
    for (i = 1; i <= NF; i++) {
        split($i, x, "");
        for (j = 1; j <= length(x); j++) {
            questions[x[j]]++
        }
    }
    sum+=length(questions);
}

END {
    print sum;
}
