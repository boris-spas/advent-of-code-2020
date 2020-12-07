{
    top=127
    bot=0
    split($0, input, "");
    for (i = 1; i <= 7; i++) {
        if (input[i] == "F") {
            top=int((top+bot)/2)
        } else {
            bot = int((top+bot)/2)+1
        }
    }


    rowR=7
    rowL=0
    split($0, input, "");
    for (i = 8; i <= 10; i++) {
        if (input[i] == "L") {
            rowR=int((rowR+rowL)/2)
        } else {
            rowL = int((rowR+rowL)/2)+1
        }
    }
    seats[NR]=bot*8+rowL
}

END {
    asort(seats);
    for (i = 2; i < NR; i++) {
        if (seats[i-1] != seats[i] - 1 && seats[i+i] != seats[i] + 1) {
            print seats[i-1]+1
        }
    }
}
