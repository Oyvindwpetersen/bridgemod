
%%

clc

nodes=1004:1576;

mod1=wawi.misc.h52struct('HalogalandModel_exportstatic.h5')
mod2=wawi.misc.h52struct('HalogalandModel_exportmodal.h5')

coord1=wawi.misc.subsetrow(mod1.nodecoord(:,2:4),nodes,mod1.nodecoord(:,1));

coord2=wawi.misc.subsetrow(mod2.nodecoord(:,2:4),nodes,mod2.nodecoord(:,1));

L1=coord1(1:end-1,:)-coord1(2:end,:);
L1=sum(L1.^2,2).^0.5

L2=coord2(1:end-1,:)-coord2(2:end,:);
L2=sum(L2.^2,2).^0.5

figure(); hold on; grid on;
plot(L2-L1,'-ok')

u1_lab=wawi.misc.genlabels('U1',nodes)
u1=wawi.misc.subsetrow(mod1.u,u1_lab,mod1.u_label);

u3_lab=wawi.misc.genlabels('U3',nodes)
u3=wawi.misc.subsetrow(mod1.u,u3_lab,mod1.u_label);

figure(); hold on;
plot(u3)
plot(u1)


%%

s=coord1(:,1)


x0=coord1(:,1)


