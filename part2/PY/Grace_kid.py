import sys

def FILENAME():
    return "Grace_kid.py"
def CODE():
    return 'import sys{}{}def FILENAME():{}    return "Grace_kid.py"{}def CODE():{}    return {}{}# This program will print its own source when run.{}def FT():{}    try:{}        f = open(FILENAME(), "w"){}    except:{}        sys.exit(){}    f.write(CODE().format(chr(10), chr(10), chr(10), chr(10), chr(10), repr(CODE()), chr(10), chr(10), chr(10), chr(10), chr(10), chr(10), chr(10), chr(10), chr(10))){}    f.close(){}FT()'
# This program will print its own source when run.
def FT():
    try:
        f = open(FILENAME(), "w")
    except:
        sys.exit()
    f.write(CODE().format(chr(10), chr(10), chr(10), chr(10), chr(10), repr(CODE()), chr(10), chr(10), chr(10), chr(10), chr(10), chr(10), chr(10), chr(10), chr(10)))
    f.close()
FT()