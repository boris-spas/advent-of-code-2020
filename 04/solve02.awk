BEGIN { 
    # FS=/\n| /
    RS="\n\n" 
}

/byr/ && /iyr/ && /eyr/ && /hgt/ && /hcl/ && /ecl/ && /pid/ {
    for (i = 1; i <= NF; i++) {
        split($i, tmp, ":")
        print tmp[1]"->"tmp[2]
        values[tmp[1]]=tmp[2]
    }
    if (valid(values)) {
        count++
    } else {
        print "=="
        print $0
    }
}

function valid(values) {
    if (values["byr"] < 1920 || values["byr"] > 2002) {
        print "invalid byr"
        return 0;
    }
    if (values["iyr"] < 2010 || values["iyr"] > 2020) {
        print "invalid iyr"
        return 0;
    }
    if (values["eyr"] < 2020 || values["eyr"] > 2030) {
        print "invalid eyr"
        return 0;
    }
    height=values["hgt"];
    if (height !~ /cm$/ && height !~ /in$/) {
        print "invalid hgt"
        return 0;
    }
    if (height ~ /cm$/) {
        split(height,x,"cm")
        height=x[1]
        if (height < 150 || height > 193) {
            print "invalid hgt"
            return 0;
        }
    }
    if (height ~ /in$/) {
        split(height,x,"in")
        height=x[1]
        if (height < 59 || height > 76) {
            print "invalid hgt"
            return 0;
        }
    }
    hair=values["hcl"]
    if (hair !~ /^#([0-9]|[a-f]){6}$/) {
        print "invalid hcl"
        return 0;
    }
    eyes=values["ecl"];
    if (!(eyes == "amb" || eyes == "blu" || eyes == "brn" || eyes == "gry" || eyes == "grn" || eyes == "hzl" || eyes == "oth")) {
        print "invalid ecl "eyes
        return 0;
    }
    if (values["pid"] !~ /^[0-9]{9}$/) {
        print "invalid pid"
        return 0;
    }
    return 1;
}

END {
    print count
}
