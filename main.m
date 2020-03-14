% loading data from csv
data = csvread("Salary_Data.csv");

% removing first row from the data matrix;
data(1,:) = [];

% calculating the number of data (rows) and the feature number (col)
[row,col] = size(data);
total_data = row;
fprintf("Number of the data: %d\n", total_data);

% traing data and testing data
% from 30 data 20 for traing and 10 for testing
X_training = data(1:20,1);
X_testing = data(21:30,1);
Y_training = data(1:20,2);
Y_testing = data(21:30,2);

[m,n] = size(X_training);


% ploting data in 2D
plotData(X_training,Y_training);

% Cost Function and Gradient Descent

X_training = [ones(m,1) X_training]; % adding the 1st column as zero
theta = zeros(2,1); % initializing theta as 2 by 1 vector with 0;

cost_J = costFunction(X_training,Y_training,theta); % computing the cost
fprintf("Cost J for theta[0;0]: %f\n",cost_J);


% parameter for gradient descent
iterations = 2500; % how many times the loop runs to get the minimized theta
alpha = 0.01; % learning rate

theta = gradientDescent(X_training, Y_training, theta, alpha, iterations);
fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);

% plot the straight line created by theta
hold on; % keep the previous plot
plot(X_training(:,2), X_training*theta, '-r','MarkerSize',30);


lenght_x_test = length(X_testing);
X_testing = [ones(lenght_x_test,1) X_testing];

predict = X_testing * theta;
predict = [predict Y_testing];
disp(predict);




