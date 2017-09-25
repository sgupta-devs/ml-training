function J = costFunctionJ(X,y,theta)

% X is a "design matrix" containg our training examples.
% y is class labels

m = size(X,1);		% Number of Training examples
predictions = X*theta;	% predictions of hypothesis on all m examples
sqrErrors = (predictions-y).^2;		% squared errors

J = 1/2*m * sum(sqrErrors);
