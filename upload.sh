#!/bin/sh

echo "${TRAVIS_TAG}\c" > latest.txt
scp -oStrictHostKeyChecking=no bin/freeshop.cia $REMOTE_DEST:sites/freeshop-files.ss23.geek.nz/latest
scp -oStrictHostKeyChecking=no bin/freeshop.cia $REMOTE_DEST:sites/freeshop-files.ss23.geek.nz/$TRAVIS_TAG
scp -oStrictHostKeyChecking=no latest.txt $REMOTE_DEST:sites/freeshop-files.ss23.geek.nz/
