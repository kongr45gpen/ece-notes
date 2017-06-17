xbar  = 2
sigma = 1.5
fbar = 1/sqrt(2*pi*sigma**2)*e**(-(x-xbar)**2/(2*sigma**2))
f = integral(fbar,x,-oo,x)
xmin = -2
xmax =  8
samples = 200

step = float(n((xmax-xmin)/samples))
xmin = n(xmin)
xmax = n(xmax)

print "# x %s" % (f,)

x = n(xmin)
while x <= xmax:
    print "%s %s" % (n(x), n(f(x)))
    x = x + step

