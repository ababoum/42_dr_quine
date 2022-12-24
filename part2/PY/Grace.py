def FILENAME():
    return "Grace_kid.py"
def CODE():
    return 'def FILENAME():{}    return "Grace_kid.py"{}def CODE():{}    return {}{}# This program will print its own source when run.{}def FT():{}    f = open(FILENAME(), "w"){}    f.write(CODE().format(chr(10), chr(10), chr(10), repr(CODE()), chr(10), chr(10), chr(10), chr(10), chr(10), chr(10))){}    f.close(){}FT()'
# This program will print its own source when run.
def FT():
    f = open(FILENAME(), "w")
    f.write(CODE().format(chr(10), chr(10), chr(10), repr(CODE()), chr(10), chr(10), chr(10), chr(10), chr(10), chr(10)))
    f.close()
FT()