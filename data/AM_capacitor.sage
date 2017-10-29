# Initial setup
samples = 500
t1 = 0
t2 = 6
f = 0.22
fc = 3
atten = 1
inten = 0.04

h=(t2-t1)/samples # step
print "# t V_out"
print "# h = %f" %(h)

var('t')
assume(t, 'real')

f(t) = 0.7 + 0.3*cos(2*pi*f*t)
c(t) = sin(2*pi*fc*t)
s(t) = f(t)*c(t)
def su(t):
    return max(s(t),0) #get only positive waveform part

# Capacitor voltage
v = []; v0 = 0

for x in srange(t1,t2+h,h):
    input = su(x)
    if input < v0:
        input = (1-atten*h) * v0
    else:
        input = max(min(input - (input-v0)*h/inten,input),0)

    v.append([x, input])
    v0 = n(input)

    print "%s %s" % (n(x), n(input))

# plot(su,0,6,color='blue') + list_plot(v,color='red',plotjoined=True)
