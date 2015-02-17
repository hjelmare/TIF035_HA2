clear all
clc

a = 5.43;

d = (a/8)*[ 1, 1, 1
           -1,-1,-1];


latticeVectorMagnitudes = [sqrt(3) sqrt(8) sqrt(11)]*a/(2*pi);
formFactors = [-0.0560 0.0138 0.0181];
pseudoPotValues = [-0.1121 0.0276 0.0362];

bcc = (2*pi/a)*[ -1  1  1
                  1 -1  1
                  1  1 -1];

coeffs = [ 1 0 0 ; 1 -1 0 ; 2 1 0];

index = 3;

G = coeffs(index,:)*bcc

(norm(G)/(2*pi/a))^2

structureFactor = exp(1i*G*d(1,:)') + exp(1i*G*d(2,:)')
%structureFactor = cos(pi*(coeffs(index,:)*[1 1 1]')/4)

potTransform = structureFactor * formFactors(index)