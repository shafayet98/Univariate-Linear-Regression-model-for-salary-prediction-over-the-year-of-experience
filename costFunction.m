function cost_J = costFunction(X_training,Y_training,theta)

m = length(Y_training);

hypothesis = X_training*theta;
squaredError = (hypothesis-Y_training).^2;
cost_J = ((1/(2*m)) * sum(squaredError));

end