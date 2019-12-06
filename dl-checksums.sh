#!/usr/bin/env sh
set -e
#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://github.com/cloudflare/cfssl/releases/download

dl() {
    local ver=$1
    local lchecksums=$2
    local app=$3
    local os=$4
    local arch=$5
    local dotexe=${6:-}
    local platform="${os}_${arch}"
    local file="${app}_${ver}_${platform}${dotexe}"
    local url=$MIRROR/v$ver/$file
    printf "      # %s\n" $url
    printf "      %s: sha256:%s\n" $platform $(grep $file $lchecksums | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    local checksums="cfssl_${ver}_checksums.txt"
    local url=$MIRROR/v$ver/$checksums
    local lchecksums=$DIR/$checksums
    if [ ! -e $lchecksums ];
    then
        wget -q -O $lchecksums $url
    fi

    printf "  # %s\n" $url
    printf "  '%s':\n" $ver

    for app in cfssl-bundle cfssl-certinfo cfssl-newkey cfssl-scan cfssljson cfssl mkbundle multirootca
    do
        printf "    %s:\n" $app
        dl $ver $lchecksums $app darwin amd64
        dl $ver $lchecksums $app linux amd64
        dl $ver $lchecksums $app windows amd64 .exe
    done
}
dl_ver ${1:-1.4.1}
