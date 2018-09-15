cdl () {
    cd $1
    ls -l
}

mcd () {
    mkdir -p $1
    cd $1
}
    
extract() {
    local c e i

    (($#)) || return

    for i; do
        c=''
        e=1

        if [[ ! -r $i ]]; then
            echo "$0: file is unreadable: \`$i'" >&2
            continue
        fi

        case $i in
            *.t@(gz|lz|xz|b@(2|z?(2))|a@(z|r?(.@(Z|bz?(2)|gz|lzma|xz)))))
                   c=(bsdtar xvf);;
            *.7z)  c=(7z x);;
            *.Z)   c=(uncompress);;
            *.bz2) c=(bunzip2);;
            *.exe) c=(cabextract);;
            *.gz)  c=(gunzip);;
            *.rar) c=(unrar x);;
            *.xz)  c=(unxz);;
            *.zip) c=(unzip);;
            *)     echo "$0: unrecognized file extension: \`$i'" >&2
                   continue;;
        esac

        command "${c[@]}" "$i"
        ((e = e || $?))
    done
    return "$e"
}

screenlock() {
#take a screenshot and save that to /tmp/lockpic.png
scrot /tmp/lockpic.png

#add a gaussian blur and save that, overwriting the first picture
convert /tmp/lockpic.png -blur 0x5 /tmp/lockpic.png

#start i3lock with the overlayed + blurred picture at /tmp/lockpic.png
i3lock -i /tmp/lockpic.png
}