{
    split($0, map, "");
    if (map[i+1] == "#") {
        count++;
    }
    i = ((i + 3) % length(map))
}

END {
    print count
}
