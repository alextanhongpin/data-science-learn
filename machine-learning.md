How to make pdf scannable? Add an ocr or qr code


How to deal with uncertainty?
- if there are two options (0 or 1), pick one first, you can always come back to it later.
- if there is a continuous value (0.0 - 1.0), use the midpoint. Than evaluate which is the one that will bring more value (higher/lower than 0.50. Else, 80/20 rule can be applied.
- if there are branch of decisions (decision tree), plot a decision tree and compute the values. 

Dealing with little data
- when there is little data, k-fold validation is a great way to evaluate model
- use a small network with few hidden layers (typically only 1 or 2), in order to avoid severe overfitting

## Branches of machine learning

- supervised learning
- unsupervised learning
- semi-supervised learning
- reinforcement learning


Supervised learning
- maps input data to known targets (annotations), given set of examples (often annotated by humans) <- how to gather annotated data.
- e.g. optical character recognition, speech recognition, image classification, language translation

Unsupervised learning
- consists of finding interesting transformations of the input data without the help of any targets, for the purpose of data visualizations, data compressions or data denoising.
- e.g. dimensionality reduction, clustering

Self-supervised learning
- supervised learning without human-annotated labels
- the labels are generated from the input data, typically using a heuristic algorithm
- e.g. autoencoders

Reinforcement learning
- 


## Regression and classification

- there are supervised and unsupervised machine learning (there are two others)
- classification and regression belongs to supervised machine learning
- clustering and association belongs to unsupervised machine learning
- Regression uses different loss functions and different evaluation metrics than classification.

Regression
- algorithms that estimates the mapping function f from the input variables x to numerical or continuous output variables y
- e.g. linear regression support vector regression and regression trees
- logistic regression is not regression, but classification even though it is called that way

Classification
- algorithm that estimates the mapping function f from the input variables x to discrete or categorical output variables y
- e.g. naive bayes, decision trees, k nearest neighbours
- Model performance can be based on the confusion matrix (accuracy, sensitivity/recall, specificity and precision), ROC chart and area under the curve (AOC).

## Hypothesis Test

- a rule that specifies whether to accept or reject a claim about a population depending on the evidence provided by the sample data
- examines two opposing hypothesis about a population, the null hypothesis and alternative hypothesis
- the null hypothesis is the statement being tested
- usually the null hypothesis is a statement of “no effect” or “no difference”
- the alternative hypothesis is the statement you want to be able to conclude is true based on the evidence provided by the sample data
- based on the sample data, the test determines whether to reject the null hypothesis
- we use p-value to determine that
- if p-value is less than the significance level (denoted a or alpha), then you can reject the null hypothesis.
- normally in statistical hypothesis tests

## Model Performance

Classification
- specificity or true negative rate (TNR)
- precision, positive predicted value (PPV)
- recall, sensitivity, hit rate or true positive rate (TPR)
- F Measure (F1, F0.5, F2)
- Matthew’s correlation coefficient (MCC)
- ROC Area (ROC AUC)
- Fallout, False Positive Rate (FPR)

Regression
- R^2, coefficient of determination (r^2)
- root means squared error (RMSE)
- Mean absolute error (MAE)

Confusion matrix
- a table that contains the output of a binary classifier. 
- true positive. The predicted positive output variable is correct.
- true negative. The predicted negative output variable is correct.
- false positive. The predicted positive output is actually negative.
- false negative. The predicted negative output is actually positive.
- see accuracy, sensitivity or recall, precision and specificity

Accuracy
- the number of correct predictions made by the model by the total number of records.
- TN + TP / (TP + TN + FP + FN)
- An accuracy of 100% means that all predictions are correct.
- Accuracy is not a valid measure of performance for imbalance dataset. Say we have a dataset of 100 items, and 5 percent is 0 and the 95 percent is 1. Even if we classified all the 5% as 1, we still get an accuracy of 95 percent. 

Sensitivity(True positive rate, TPR) or Recall (REC)
- The true positive rate
- calculated as the number of correct positive predictions over the total number of positives.
- TP / (TP + FN)

Specificity 
- The true negative rate (TNR)
- Calculated as the number of correct negative predictions divided by the total number of negatives
- TN / (TN + FP)

Precision
- positive predicted values (PPV)
- calculated as the number of correct positive predictions divided by the total number of positive predictions
- TP / (TP + FP)

KS-statistic
- measure of degree of separation between the positive and negative distributions. 
- a value of 100 means that the scores partition the records exactly such that one group contains all positive and the other contains all negative
- in practical situations, a KS value of higher than 50% is desirable

ROC Chart
- receiver operating characteristic
- ranges from 0 to 1, higher is better.
- used for radar detection object in world war 2.
- a plot of 1-specificity in the X-axis and sensitivity in the Y-axis. Area under the ROC curve is a measure of a model performance. The AUC of a random classifier is 50% and that of a perfect classifier is 100%. For practical solutions, an AUC of over 70% is desirable.
- 1.0 - 0.8 is good, 0.6-0.8 is fair to poor and below that is no better than random choice.

F Measure
- ranges from 0 to 1
- describes the balance between Prevision (PPV) and Recall (TPR)
- F = (PPV * TPR) / (PPV + TPR) = 2 TP / (2 TP + FP + FN)
- There are F1, F0.5, F2
- F2 weights recall higher than precision
- F05 puts more emphasis on precision than recall

Matthew’s Correlation Coefficient (MCC)
- a correlation coefficient between the observed and predicted binary classification
- a coefficient of +1 represents a perfect prediction
- 0 is equal to no better than random prediction
- and -1 indicates a total disagreement between prediction and observation
- often represented as a correlation heatmap
- MCC = (TP * TN - FP * N) / sqrt(FT + FP)(TN + FP)(TN + FN))

Fallout, False Positive Rate (FPR)
- ranges from 0 to 1, lower is better
- ratio between the number of negative events wrongly categorize as positive (false positive) and the total number of negative events.
- opposite of precision?
- FPR = FP / (FP + TN)
- higher value means higher numerator / lower denominator, which means more false positive detected.

Net revenue function
- derived from apportioning a cost for every false positive and false negative and arriving at the overall revenue based on the correct and incorrect predictions
- net revenue = (# of TN x average annual interest income per customer - # of FP x False positive cost per customer - # of FN x False negative cost per customer - # of TP x True positive cost per customer)

Probability and P values
- probability provide a common way to interpret the statistical strength of a model.
- part of hypothesis test
- p-value range from 0 to 1
- p-value represents how likely it is to get a result if the null hypothesis (h1?) is true.
- the lower the p-value, the better indication that the alternative hypothesis is actually true. In this scenario, we reject the null hypothesis.
- the threshold of p-value is called the “level of insignificance”. 
- a p-value of equal to or less than 0.05 is said to be significant. In another word, we would likely get a confirmation of the null hypothesis 5 out of 100 times, or the alternative hypothesis 95 out of 100).
- The higher the p value closer to random change means the more the null hypothesis is likely

R^2, Coefficient of Determination (r^2)
- ranges from 0 to 1, higher is better (only look at which direction is better)
- R^2 or r^2, they are aliases
- the proportion of how well data fits the regression by using the ordinary least squares regression (OLS)

Root means squared error (RMSE)
- ranges from 0 to infinity (lower is better)
- a.k.a Root Mean Square Deviation (RMSD)
- a quadratic-based rule to measure the absolute magnitude of error
- is calculated by taking the residuals (the difference between the regression model and the actual data), squaring it, averaging all the results and then taking the square root of the average. Because of this the product will always be a positive number.
- reactive to large errors due to the squaring

Mean absolute error (MAE)
- ranges from 0 to infinity (lower is better)
- similar like RMSE, but instead of squaring the difference of the residuals and taking the square root of the result, it just averages the absolute difference of the residuals
- produces positive only numbers
- less reactive to large errors

## Glossary
- sample or input - one data point that goes into your model
- prediction or output - what comes out of the model
- target - the truth. what your model should ideally have predicted, according to external source of data
- prediction error or loss value - a measure of distance between your model’s prediction and target
- classes -  a set of possible labels to choose from in a classification problem. For example, when classifying cat and dog pictures, “cat” and “dog” are two classes.
- label - a specific instance of a class annotation in classification problems
- ground truth or annotations - all targets for a dataset, typically collected by humans
- binary classification - a classification task where each input sample should be categorized into two exclusive categories
- multiclass classification - a classification task where each input sample should be categorized into more than two categories - for example, classifying handwritten digits
- multilabel classification - a classification task where each input sample can be assigned multiple labels. For instance, a given image may contain both a cat and dog and should be annotated with the “cat” label and the “dog” label.
- Scalar regression - a task where the target is continuous scalar value. predicting house prices is a good example - the different target prices form a continuous space.
- Vector regression - a task where the target is a set of continuous values, for example a continuous vector.
- Mini-batch or batch. A small set of samples that are processed simultaneously by the model. 


## Applications

Churn prediction - churn refers to the act of a customer cancelling or unsubscribing from a paid service. Churn prediction concerns on predicting which customers are likely to churn in the near future.


## Median vs Mean
- Mean of a set of numbers is the sum of all numbers divided by the cardinality
- Median of a set of numbers is the middle number, when the set is organized in ascending or descending order. When the set has even number, then the mean median is the mean of the two middle numbers.

The real use of the median comes when the data set may contain extreme outliers, since mean is sensitive to outliers.



## Feature engineering

Using the existing features to create new features that increase the value of the original data by applying our knowledge of the data or domain in question.

