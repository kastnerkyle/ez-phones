#!/bin/bash
./pocketsphinx_continuous -infile $1 -hmm pocketsphinx/model/en-us/en-us -allphone pocketsphinx/model/en-us/en-phone.lm.dmp -time yes
