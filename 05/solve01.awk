{
    top=127
    bot=0
    split($0, input, "");
    for (i = 1; i <= 7; i++) {
        if (input[i] == "F") {
            top=int((top+bot)/2)
            #print bot" "top
        } else {
            bot = int((top+bot)/2)+1
            #print bot" "top
        }
    }


    rowR=7
    rowL=0
    split($0, input, "");
    for (i = 8; i <= 10; i++) {
        if (input[i] == "L") {
            rowR=int((rowR+rowL)/2)
            #print rowL" "rowR
        } else {
            rowL = int((rowR+rowL)/2)+1
            #print rowL" "rowR
        }
    }
    seats[NR]=bot*8+rowL
} 

END {
    asort(seats)
    print seats[NR]
}
