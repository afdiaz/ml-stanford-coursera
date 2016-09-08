function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % Iteration Implementation
    % number_of_thetas = length(theta);
    % new_theta = zeros(number_of_thetas,1);
    % for j = 1:number_of_thetas
    %   sum_of_prediction_deviations = 0;
    %   for i = 1:m
    %     %h(x)=X*theta
    %     hx = X(i,:) * theta;
    %     prediction_deviation = (hx - y(i,:))*X(i,j);
    %     sum_of_prediction_deviations = sum_of_prediction_deviations + prediction_deviation;
    %   end
    %   new_theta(j) = theta(j) - (alpha/m)*sum_of_prediction_deviations;
    % end
    % theta = new_theta;

    %Vectorized implementation
    derivate = (X'*(X*theta - y))/m;
    theta = theta - alpha*derivate;

    % Save the cost J in every iteration
    cost = computeCost(X, y, theta);
    J_history(iter) = cost;

end

end
