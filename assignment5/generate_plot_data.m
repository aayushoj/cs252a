x=linspace(0,50,51);
n=50;
p=0.3;
lambda=15;
mu=15;
sigma=sqrt(10.5);
y_bino=binopdf(x,n,p);
y_poiss=poisspdf(x,lambda);
y_guass=normpdf(x,mu,sigma);
final=[x; y_bino ;y_poiss ; y_guass];
disp(final);
fd = fopen("distribution_data","wt");
fprintf(fd, "%f %f %f %f\n", final);
fclose(fd);
disp("Done!");

