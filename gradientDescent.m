function [theta] = gradientDescent(X_training,Y_training,theta,alpha,iterations)


m = length(Y_training);

for iter = 1:iterations


    hypothesis = (X_training*theta);
    err = hypothesis-Y_training; 
    temp1 = theta(1) - ((alpha/m) * sum(err));
    temp2 = theta(2) - ( (alpha/m) * sum(err .* X_training(:,2)) );
    theta = [temp1;temp2];


end


end