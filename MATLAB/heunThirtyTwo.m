f=@(x)2*x+3;
[x11]=TapezoidRule(f,1,3,10);
[x12]=TapezoidRule(f,1,3,20);
[x13]=TapezoidRule(f,1,3,40);
[x14]=TapezoidRule(f,1,3,80);
[x15]=TapezoidRule(f,1,3,160);
[x16]=TapezoidRule(f,1,3,320);
g=@(x)2*x.^2+3*x+4;
[x21]=TapezoidRule(g,1,3,10);
[x22]=TapezoidRule(g,1,3,20);
[x23]=TapezoidRule(g,1,3,40);
[x24]=TapezoidRule(g,1,3,80);
[x25]=TapezoidRule(g,1,3,160);
[x26]=TapezoidRule(g,1,3,320);
A=[x11,x21]
B=[x12,x22]
C=[x13,x23]
D=[x14,x24]
E=[x15,x25]
F=[x16,x26]