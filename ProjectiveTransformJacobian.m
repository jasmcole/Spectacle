function J = ProjectiveTransformJacobian(u,v,params)

if(length(params) == 8)

[a b c d e f g h] = deal(params(1), ...
    params(2), ...
    params(3), ...
    params(4), ...
    params(5), ...
    params(6), ...
    params(7), ...
    params(8));

else
    
    [a b c d e f g h] = deal(params.tdata.T(1,1), ...
                             params.tdata.T(2,1), ...
                             params.tdata.T(3,1), ...
                             params.tdata.T(1,2), ...
                             params.tdata.T(2,2), ...
                             params.tdata.T(3,2), ...
                             params.tdata.T(1,3), ...
                             params.tdata.T(2,3));

end

lambda = 1/(g*u + h*v + 1);

J = lambda^2*(a*e - b*d) + lambda^3*( (d*h - e*g)*(a*u + b*v + c) + (b*g - a*h)*(d*u + e*v + f) );

end