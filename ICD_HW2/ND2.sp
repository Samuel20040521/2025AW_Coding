
*********************************************
.inc '90nm_bulk.l'

* ND2: pins = DVDD GND A B Y
.SUBCKT ND2 DVDD GND A B Y
MMp1 Y A DVDD DVDD PMOS l=0.1u w=0.5u m=1
MMp2 Y B DVDD DVDD PMOS l=0.1u w=0.5u m=1
MMn1 Y A N1   GND  NMOS l=0.1u w=0.25u m=1
MMn2 N1 B GND GND  NMOS l=0.1u w=0.25u m=1
.ENDS
*********************************************
Vdd DVDD  0  1.0
Vss GND   0  0

VA A 0 pwl(0n 0v  90n 0v 100n 0v   190n 0v  200n 1.0v  290n 1.0v 300n 1.0v  400n 1.0v)
VB B 0 pwl(0n 0v  90n 0v 100n 1.0v 190n 1.0v 200n 0v   290n 0v   300n 1.0v  400n 1.0v)

x1 DVDD GND A B Y ND2

.tran 1n 400n
.op
.option post
.end
