function termcolours
    set herrbischoff_tcolors (echo $TERM | grep -oE '2|4|8|16|32|64|128|256')
    for i in (seq 0 $herrbischoff_tcolors)
        printf "\x1b[38;5;%smcolour%s\n" $i $i
    end
    unset $herrbischoff_tcolors
end
