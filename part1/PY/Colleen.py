def ft():
    return 42
# This program will print its own source when run.

if __name__ == "__main__":
    s = 'def ft():{}    return 42{}# This program will print its own source when run.{}{}if __name__ == "__main__":{}    s = {}{}    ft(){}    # Comment bis{}    print(s.format(chr(10), chr(10), chr(10), chr(10), chr(10), repr(s), chr(10), chr(10), chr(10)))'
    ft()
    # Comment bis
    print(s.format(chr(10), chr(10), chr(10), chr(10), chr(10), repr(s), chr(10), chr(10), chr(10)))
