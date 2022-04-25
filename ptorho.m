% rough conversion of pressure to density for mass-weighting purposes
% http://people.lib.ucdavis.edu/~bobhg/stan_atmos.html
addpath( genpath( '/kontiki6/cnv5172/standard-atmosphere/'  ) )
levs = [10, 20, 30, 50, 70, 100, 125];

pressures = levs * 100; % convert to hPa to Pa
heights = pressurealt(pressures, "SI");
[rho,a,T,P,nu,z,sigma] = atmos(heights);

rho;

"mass weighting: "
levswgt = rho / rho(end)
