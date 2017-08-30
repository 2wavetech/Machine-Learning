function normalX = ScaleNormalize (X)
% y = w0 + w1*x1 + w2*x2, to scale the features X1 and X2
% by newX1=(X1-meanX1)/range(X1), newX2=(X2-meanX2)/range(X2) 

% meanX1 = sum(X1)/length(X1);
% meanX2 = sum(X2)/length(X2);

meanX = sum(X)/size(X,1);

% newX1 = (X1 - meanX1)/range(X1);
% newX2 = (X2 - meanX2)/range(X2);

normalX = (X - meanX)./range(X);
%  X./range(X)

endfunction