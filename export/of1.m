clc
clear
sre10i=importdata('vS/vS10/line1_U.xy');
sre10j=importdata('vS/vS10/line2_U.xy');
sre10k=importdata('vS/vS10/line3_U.xy');

sre71i=importdata('vS/vS71.25/line1_U.xy');
sre71j=importdata('vS/vS71.25/line2_U.xy');
sre71k=importdata('vS/vS71.25/line3_U.xy');

sre132i=importdata('vS/vS132.5/line1_U.xy');
sre132j=importdata('vS/vS132.5/line2_U.xy');
sre132k=importdata('vS/vS132.5/line3_U.xy');

sre193i=importdata('vS/vS193.75/line1_U.xy');
sre193j=importdata('vS/vS193.75/line2_U.xy');
sre193k=importdata('vS/vS193.75/line3_U.xy');

sre255i=importdata('vS/vS255/line1_U.xy');
sre255j=importdata('vS/vS255/line2_U.xy');
sre255k=importdata('vS/vS255/line3_U.xy');

sre316i=importdata('vS/vS316.25/line1_U.xy');
sre316j=importdata('vS/vS316.25/line2_U.xy');
sre316k=importdata('vS/vS316.25/line3_U.xy');

sre377i=importdata('vS/vS377.5/line1_U.xy');
sre377j=importdata('vS/vS377.5/line2_U.xy');
sre377k=importdata('vS/vS377.5/line3_U.xy');

sre438i=importdata('vS/vS438.75/line1_U.xy');
sre438j=importdata('vS/vS438.75/line2_U.xy');
sre438k=importdata('vS/vS438.75/line3_U.xy');

sre500i=importdata('vS/vS500/line1_U.xy');
sre500j=importdata('vS/vS500/line2_U.xy');
sre500k=importdata('vS/vS500/line3_U.xy');

Reynold = [ 10 71.25 132.5 193.75 255 316.25 377.5 438.75 500];
forceS = zeros(9,1);

forceS(1) = sum((1*(11/6)- 3*sre10i(:,4)+1.5*sre10j(:,4)-(1/3)*sre10k(:,4))/(0.001));
forceS(2) = sum((1*(11/6)- 3*sre71i(:,4)+1.5*sre71j(:,4)-(1/3)*sre71k(:,4))/(0.001));
forceS(3) = sum((1*(11/6)- 3*sre132i(:,4)+1.5*sre132j(:,4)-(1/3)*sre132k(:,4))/(0.001));
forceS(4) = sum((1*(11/6)- 3*sre193i(:,4)+1.5*sre193j(:,4)-(1/3)*sre193k(:,4))/(0.001));
forceS(5) = sum((1*(11/6)- 3*sre255i(:,4)+1.5*sre255j(:,4)-(1/3)*sre255k(:,4))/(0.001));
forceS(6) = sum((1*(11/6)- 3*sre316i(:,4)+1.5*sre316j(:,4)-(1/3)*sre316k(:,4))/(0.001));
forceS(7) = sum((1*(11/6)- 3*sre377i(:,4)+1.5*sre377j(:,4)-(1/3)*sre377k(:,4))/(0.001));
forceS(8) = sum((1*(11/6)- 3*sre438i(:,4)+1.5*sre438j(:,4)-(1/3)*sre438k(:,4))/(0.001));
forceS(9) = sum((1*(11/6)- 3*sre500i(:,4)+1.5*sre500j(:,4)-(1/3)*sre500k(:,4))/(0.001));

forceS = 0.1*forceS;

plot(Reynold,forceS, '-o')
title("Force(tilde) vs Reynold's number for H/L=0.5")
xlabel("Re")
ylabel('non-dimensional Force')

tre10i=importdata('vT/vT10/line1_U.xy');
tre10j=importdata('vT/vT10/line2_U.xy');
tre10k=importdata('vT/vT10/line3_U.xy');

tre71i=importdata('vT/vT71.25/line1_U.xy');
tre71j=importdata('vT/vT71.25/line2_U.xy');
tre71k=importdata('vT/vT71.25/line3_U.xy');

tre132i=importdata('vT/vT132.5/line1_U.xy');
tre132j=importdata('vT/vT132.5/line2_U.xy');
tre132k=importdata('vT/vT132.5/line3_U.xy');

tre193i=importdata('vT/vT193.75/line1_U.xy');
tre193j=importdata('vT/vT193.75/line2_U.xy');
tre193k=importdata('vT/vT193.75/line3_U.xy');

tre255i=importdata('vT/vT255/line1_U.xy');
tre255j=importdata('vT/vT255/line2_U.xy');
tre255k=importdata('vT/vT255/line3_U.xy');

tre316i=importdata('vT/vT316.25/line1_U.xy');
tre316j=importdata('vT/vT316.25/line2_U.xy');
tre316k=importdata('vT/vT316.25/line3_U.xy');

tre377i=importdata('vT/vT377.5/line1_U.xy');
tre377j=importdata('vT/vT377.5/line2_U.xy');
tre377k=importdata('vT/vT377.5/line3_U.xy');

tre438i=importdata('vT/vT438.75/line1_U.xy');
tre438j=importdata('vT/vT438.75/line2_U.xy');
tre438k=importdata('vT/vT438.75/line3_U.xy');

tre500i=importdata('vT/vT500/line1_U.xy');
tre500j=importdata('vT/vT500/line2_U.xy');
tre500k=importdata('vT/vT500/line3_U.xy');

forceT = zeros(9,1);

forceT(1) = sum((1*(11/6)- 3*tre10i(:,4)+1.5*tre10j(:,4)-(1/3)*tre10k(:,4))/(0.001));
forceT(2) = sum((1*(11/6)- 3*tre71i(:,4)+1.5*tre71j(:,4)-(1/3)*tre71k(:,4))/(0.001));
forceT(3) = sum((1*(11/6)- 3*tre132i(:,4)+1.5*tre132j(:,4)-(1/3)*tre132k(:,4))/(0.001));
forceT(4) = sum((1*(11/6)- 3*tre193i(:,4)+1.5*tre193j(:,4)-(1/3)*tre193k(:,4))/(0.001));
forceT(5) = sum((1*(11/6)- 3*tre255i(:,4)+1.5*tre255j(:,4)-(1/3)*tre255k(:,4))/(0.001));
forceT(6) = sum((1*(11/6)- 3*tre316i(:,4)+1.5*tre316j(:,4)-(1/3)*tre316k(:,4))/(0.001));
forceT(7) = sum((1*(11/6)- 3*tre377i(:,4)+1.5*tre377j(:,4)-(1/3)*tre377k(:,4))/(0.001));
forceT(8) = sum((1*(11/6)- 3*tre438i(:,4)+1.5*tre438j(:,4)-(1/3)*tre438k(:,4))/(0.001));
forceT(9) = sum((1*(11/6)- 3*tre500i(:,4)+1.5*tre500j(:,4)-(1/3)*tre500k(:,4))/(0.001));


forceT = 0.2*forceT;

figure(2)
plot(Reynold,forceT, '-o')
title("Force(tilde) vs Reynold's number for H/L=2")
xlabel("Re")
ylabel('non-dimensional Force')




