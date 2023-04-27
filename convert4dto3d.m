% converts the 4d torus coordinate into the 3d coordinate:
% 4d is: (a1,a2,a3,a4) = (cos(phi), sin(phi), cos(theta), sin(theta))
% x  =  getSrcData( model );  
r1 = 0.5;
r2 = 0.5;

nS = size(x,2);
x_3d            = zeros( 3, nS );

% x_3d( 1, : )    = ( 1 + r1 * cos( theta ) ) .* cos( phi );
% x_3d( 2, : )    = ( 1 + r1 * cos( theta ) ) .* sin( phi );
% x_3d( 3, : )    = r2 * sin( theta );
% so use 4d which looks like:
% 
%     x = [ cos( phi ) 
%           sin( phi ) 
%           cos( theta ) 
%           sin( theta ) ];

x_3d( 1, : )    = ( 1 + r1 * x(3,:) ) .* x(1,:);
x_3d( 2, : )    = ( 1 + r1 * x(3,:) ) .* x(2,:);
x_3d( 3, : )    = r2 * x(4,:);

    