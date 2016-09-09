Make sure to have run ```sudo apt-get install bison libtool autoconf swig```

Now run ```bash setup.sh```

This should download and build all the things necessary to use pocketsphinx

To test pocketsphinx for phoneme extraction, try the following command

```bash ps_shortcut.sh helloworld.wav```

Note, this file *must* be 16kHz. You can perform this conversion using sox, like

```sox in.wav -b 16 out.wav rate 16k```

More details can be seen at http://cmusphinx.sourceforge.net/wiki/phonemerecognition                       

Example output from ```bash ps_shortcut.sh helloworld.wav```

SNIP

```
INFO: allphone_search.c(913): Hyp: SIL HH EH L OW W ER L D ER SIL HH
SIL HH EH L OW W ER L D ER SIL HH
SIL 0.040 0.070 1.000000
HH 0.080 0.150 1.000000
EH 0.160 0.230 1.000000
L 0.240 0.330 1.000000
OW 0.340 0.490 1.000000
W 0.500 0.560 1.000000
ER 0.570 0.720 1.000000
L 0.730 0.820 1.000000
D 0.830 0.900 1.000000
ER 0.910 1.010 1.000000
SIL 1.020 1.090 1.000000
HH 1.100 1.400 1.000000
```
