function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% data = load('ex2data1.txt');

% X = data (:,1:2);
% y = data (:,3);

index_positive = find(y);           % get the indices of the "1" data points
index_negative = find(y==0);        % get the indices of the "0" data points

X1_positive = X(index_positive, 1); % extract the 1st column of the "1" elements of X
X2_positive = X(index_positive, 2); % extract the 2nd column of the "1" elements of X

X1_negative = X(index_negative, 1); % extract the 1st column of the "0" elements of X
X2_negative = X(index_negative, 2); % extract the 2nd column of the "0" elements of X

plot(X1_positive, X2_positive, 'r+', 'MarkerSize', 6, 'LineWidth', 2);         % plot the data points of "1" using red "+"
plot(X1_negative, X2_negative, 'bo', 'MarkerSize', 6,'MarkerFaceColor','b' );  % plot the data points of "0" using blue "o"

% =========================================================================



hold off;

end
