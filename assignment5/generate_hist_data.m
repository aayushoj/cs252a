bino3=binornd(50,0.3,1000,1)
bino4=binornd(50,0.3,10000,1)
bino5=binornd(50,0.3,100000,1)
bino6=binornd(50,0.3,1000000,1)

poiss3=poissrnd(15,1000,1)
poiss4=poissrnd(15,10000,1)
poiss5=poissrnd(15,100000,1)
poiss6=poissrnd(15,1000000,1)

sigma=sqrt(10.5)
norm3=normrnd(15,sigma,1000,1)
norm4=normrnd(15,sigma,10000,1)
norm5=normrnd(15,sigma,100000,1)
norm6=normrnd(15,sigma,1000000,1)

fd = fopen("bino3.dat","wt");
fprintf(fd, "%f\n", bino3);
fclose(fd);
fd = fopen("bino4.dat","wt");
fprintf(fd, "%f\n", bino4);
fclose(fd);
fd = fopen("bino5.dat","wt");
fprintf(fd, "%f\n", bino5);
fclose(fd);
fd = fopen("bino6.dat","wt");
fprintf(fd, "%f\n", bino6);
fclose(fd);


fd = fopen("poiss3.dat","wt");
fprintf(fd, "%f\n", poiss3);
fclose(fd);
fd = fopen("poiss4.dat","wt");
fprintf(fd, "%f\n", poiss4);
fclose(fd);
fd = fopen("poiss5.dat","wt");
fprintf(fd, "%f\n", poiss5);
fclose(fd);
fd = fopen("poiss6.dat","wt");
fprintf(fd, "%f\n", poiss6);
fclose(fd);

fd = fopen("norm3.dat","wt");
fprintf(fd, "%f\n", norm3);
fclose(fd);
fd = fopen("norm4.dat","wt");
fprintf(fd, "%f\n", norm4);
fclose(fd);
fd = fopen("norm5.dat","wt");
fprintf(fd, "%f\n", norm5);
fclose(fd);
fd = fopen("norm6.dat","wt");
fprintf(fd, "%f\n", norm6);
fclose(fd);
