#!/bin/bash
BDIR=/backup
BDATE=$(date +'%d.%m.%Y_%H.%M')
FILENAME=$BDIR/$BDATE

find /backup/ -type f -mmin +1 -delete
tar -czvf $FILENAME.tar.gz -C /home/user . &> $FILENAME.log
