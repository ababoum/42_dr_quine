def ft():
    return 42

if __name__ == "__main__":
    s = 'def ft():{}    return 42{}{}if __name__ == "__main__":{}    s = {}{}    ft(){}    print(s.format(chr(10), chr(10), chr(10), chr(10), repr(s), chr(10),  chr(10)))'
    ft()
    print(s.format(chr(10), chr(10), chr(10), chr(10), repr(s), chr(10),  chr(10)))
