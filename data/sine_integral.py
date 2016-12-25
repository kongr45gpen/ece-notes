f = Si
xmin = -4*pi
xmax =  4*pi
samples = 200

step = float(n((xmax-xmin)/samples))
xmin = n(xmin)
xmax = n(xmax)

print "# x %s" % (f,)

x = n(xmin)
while x <= xmax:
    print "%s %s" % (n(x), n(f(x)))
    x = x + step
