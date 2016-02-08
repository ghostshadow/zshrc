#!/usr/bin/python3

from math import *
import sys

if __name__=="__main__":
    query=""
    if len(sys.argv)>1:
        query=sys.argv[1]
        print(eval(query))
    else:
        while True:
            try:
                query=input("> ")
                print(eval(query))
            except EOFError:
                sys.exit(0)
            except:
                e=sys.exc_info()
                sys.excepthook(e[0],e[1],e[2])

