#!/usr/bin/python3

from math import *
import sys
import code

if __name__=="__main__":
    query=""
    if len(sys.argv)>1:
        query=sys.argv[1]
        print(eval(query))
    else:
        code.interact(banner="Simple Calc\n"\
                "(math.py functions in global namespace)",\
                local=locals())

