import urllib, sys; print (urllib.quote(  sys.argv[1] if len(sys.argv) > 1 else sys.stdin.read()[0:-1]))
