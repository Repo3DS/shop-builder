#!/bin/sh

scp -oStrictHostKeyChecking=no bin/freeshop.cia $REMOTE_DEST:sites/freeshop-files.ss23.geek.nz/latest
scp -oStrictHostKeyChecking=no bin/freeshop.cia $REMOTE_DEST:sites/freeshop-files.ss23.geek.nz/$TRAVIS_TAG
