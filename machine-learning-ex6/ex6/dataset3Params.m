function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example,
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using
%        mean(double(predictions ~= yval))
%


params_to_test = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];

lowest_error = Inf;

% Try all c's and all sigmas for each c
for c_index_tested = 1:numel(params_to_test)
  c_tested = params_to_test(c_index_tested);
  for s_index_tested = 1:numel(params_to_test)
    s_tested = params_to_test(s_index_tested);
    model = svmTrain(X, y, c_tested, @(x1, x2) gaussianKernel(x1, x2, s_tested));
    predictions = svmPredict(model, Xval);
    prediction_error =  mean(double(predictions ~= yval));
    if( prediction_error < lowest_error )
      lowest_error = prediction_error;
      C = c_tested;
      sigma = s_tested;
    end
  end
end

% best sigma found: 0.1, best C found: 1


% =========================================================================

end
