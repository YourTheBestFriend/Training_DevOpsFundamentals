#!/bin/bash
echo -en 'Input FileName: ' && read FileName && touch $FileName

cat << EOF > $FileName
An old silent pond...
A frog jumps into the pond,
splash! Silence again.

Autumn moonlight-
a worm digs silently
into the chestnut.

In the twilight rain
these brilliant-hued hibiscus -
A lovely sunset.
EOF
cat $FileName
echo 'Task Finished' > /dev/null 2>&1
