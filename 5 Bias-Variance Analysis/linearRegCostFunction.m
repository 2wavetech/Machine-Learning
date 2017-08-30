function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% fprintf('size of theta in linearRegCostFunction is %d\n', size(theta));
h = X * theta;                                                % note that X has included the column of 1's
grad = (1/m) * (h - y)'* X;
grad(2:end) = grad(2:end) + (lambda/m) * theta(2:end)';

% J = 1/(2*m) * sum((h - y).^2) + (sum(theta(2:end).^2))*lambda/(2*m);
J = 1/(2*m) * ((h - y)'*(h - y)) + (theta(2:end)'* theta(2:end)) * lambda/(2*m);

grad = grad';
% =========================================================================

end
