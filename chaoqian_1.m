Gc = tf([0.0538 1],[0.00034 1 ]);
gain=7.45
int=tf([1],[1 0]);

G0 = tf([22.6],[0.12 1 0 ])
G=Gc*int*gain
G=G/(1+G)

[gm,pm,wcg,wcp]=margin(G)
rlocus(G)


    