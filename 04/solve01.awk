BEGIN { RS="\n\n" }

/byr/ && /iyr/ && /eyr/ && /hgt/ && /hcl/ && /ecl/ && /pid/ {
    count++
}

END { print count }
