function findfile() {
    find | ack $@
}

function findfileinroot() {
    cd /
    findfile $@
    cd -
}

function countfiles() {
    ls -l $@ | wc -l
}

function weather() {
    curl "http://wttr.in/$1"
}

function fromhex(){
    hex=${1#"#"}
    r=$(printf '0x%0.2s' "$hex")
    g=$(printf '0x%0.2s' ${hex#??})
    b=$(printf '0x%0.2s' ${hex#????})
    printf '%03d' "$(( (r<75?0:(r-35)/40)*6*6 + 
                       (g<75?0:(g-35)/40)*6   +
                       (b<75?0:(b-35)/40)     + 16 ))" |
        sed 's/^0//gp'
}
