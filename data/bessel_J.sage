if len(sys.argv) != 2:
    print "USAGE: %s [n]" % (sys.argv[0])
    exit(1)

f(x) = bessel_J(int(sys.argv[1]),x)
xmin = 0
xmax = 18
samples = 200

step = float(n((xmax-xmin)/samples))
xmin = n(xmin)
xmax = n(xmax)

print "# x %s" % (f,)

x = n(xmin)
while x <= xmax:
    print "%s %s" % (n(x), n(f(x)))
    x = x + step

