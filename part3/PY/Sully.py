import sys, os

i = 6
try:
    f = open(f"Sully_{i - 1}.py", "w+")
except:
    sys.exit()
code = 'import sys, os{}{}i = {}{}try:{}    f = open(f"Sully_{}i - 1{}.py", "w+"){}except:{}    sys.exit(){}code = {}{}f.write(code.format(chr(10), chr(10), i - 1, chr(10), chr(10), chr(123), chr(125), chr(10), chr(10), chr(10), repr(code), chr(10),  chr(10), chr(10), chr(10), chr(123), chr(125))){}f.close(){}if i - 1 > 0:{}    os.system(f"python Sully_{}i - 1{}.py")'
f.write(code.format(chr(10), chr(10), i - 1, chr(10), chr(10), chr(123), chr(125), chr(10), chr(10), chr(10), repr(code), chr(10),  chr(10), chr(10), chr(10), chr(123), chr(125)))
f.close()
if i - 1 > 0:
    os.system(f"python Sully_{i - 1}.py")