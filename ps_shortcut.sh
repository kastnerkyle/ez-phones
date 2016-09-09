#!/bin/bash
./pocketsphinx_continuous -infile $1 -hmm cmusphinx-en-us-5.2 -allphone en-us-phone.lm.dmp -time yes -backtrace yes -beam 1e-20 -pbeam 1e-20 -lw 2.0
