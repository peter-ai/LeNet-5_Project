%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Author: Peter Akioyamen                  
%  
%  This program graphs the results of each LeNet-5 
%  convolutional neural network architechture based  
%  on MNIST handwritten digit image recognition.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lenet5_results = readtable("../Results/LeNet5_results.csv");
m_lenet5_results_20 = readtable("../Results/LeNet5_results_adam_20epoch.csv");
m_lenet5_results_10 = readtable("../Results/LeNet5_results_adam_10epoch.csv");

plot(lenet5_results{:,1} + 1, 100 - lenet5_results{:, 3}, "r", "LineWidth", 1, "Marker", "o", "MarkerFaceColor", "r", "MarkerSize", 4.5)
hold on
plot(lenet5_results{:,1} + 1, 100 - lenet5_results{:, 4}, "b", "LineWidth", 1, "Marker", "s", "MarkerFaceColor", "b", "MarkerSize", 4.5)
xlabel("Epochs")
ylabel("Error %")
legend("Training Accuracy", "Testing Accuracy")
title("LeNet-5")

figure
plot(m_lenet5_results_20{:,1} + 1, 100 - m_lenet5_results_20{:, 3}, "r", "LineWidth", 1, "Marker", "o", "MarkerFaceColor", "r", "MarkerSize", 4.5)
hold on
plot(m_lenet5_results_20{:,1} + 1, 100 - m_lenet5_results_20{:, 4}, "b", "LineWidth", 1, "Marker", "s", "MarkerFaceColor", "b", "MarkerSize", 4.5)
xlabel("Epochs")
ylabel("Error %")
legend("Training Accuracy", "Testing Accuracy")
title("LeNet-5 with Adam Optimizer (20 Epochs)")

figure
plot(m_lenet5_results_10{:,1} + 1, 100 - m_lenet5_results_10{:, 3}, "r", "LineWidth", 1, "Marker", "o", "MarkerFaceColor", "r", "MarkerSize", 4.5)
hold on
plot(m_lenet5_results_10{:,1} + 1, 100 - m_lenet5_results_10{:, 4}, "b", "LineWidth", 1, "Marker", "s", "MarkerFaceColor", "b", "MarkerSize", 4.5)
xlim([0.5 10])
xlabel("Epochs")
ylabel("Error %")
legend("Training Accuracy", "Testing Accuracy")
title("LeNet-5 with Adam Optimizer (10 Epochs)")