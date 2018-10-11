filename = "Cage The Elephant - Aint No Rest For The Wicked.mp3"

sox -S $filename -r 44100 -b 16 -e signed-integer -c 2 -t raw - | pv -q -L $((44100*4)) | \
./sender $(\
if [ $# -eq 0 ] ; then
    echo "-a 224.0.0.1"
else
    echo "-a "$1" "$(if [ $# -eq 2 ] ; then
        echo "-n "$2
    fi)
fi)
