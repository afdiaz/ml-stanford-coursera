#Excercises for the course Machine Learning by Stanford

The exercises correspond to the course available through Coursera from September through November 2016.

These are my solutions to the programming assignments.

#### Table of Contents
  [Week 3 - Logistic Regression](#logistic-regression)
  [Week 2 - Linear Regression with Multiple Variables](#linear-regression)

<a name="logistic-regression"/>
##Week 3 Logistic Regression

### Overview of the solution

This week, we solved two problems. One, was to predict if a student would be admitted or not to a certain college given the results of two admission exams and historic data on the acceptance of other students.

The second problem, was to predict if a microchip at a factory should be accepted or rejected depending on two tests. In this example, we applied regularization.

### Visualization

The first step to understand the problem, was to visualize the data.

![Visualization of sample data](http://oi63.tinypic.com/2daaquf.jpg)

### Sigmoid Function

We then had to create a function that is able to calculate the sigmoid for a vector or a matrix. Instead of looping for each element, I did the vectorized implementation using the dot division for each element.

##### The Sigmoid Function

![Sigmoid Function](http://oi65.tinypic.com/2zp2sna.jpg)

##### Vectorized implementation

The vectorized implementation of the sigmoid function was one line of code 😎

`g = 1 ./ (1 + exp(-z));`

### Cost Function and gradient

To calculate the cost and gradient, I also used vectorized implementation. The formulas for the hypothesis, the cost and the gradient vectorized are:

**Hypothesis for logistic regression vectorized**
![Hypothesis for logistic regression vectorized](http://oi65.tinypic.com/357rmg9.jpg)

**Cost function vectorized**
![Cost function vectorized](https://s15.postimg.org/p182js7d7/Screen_Shot_2016_09_15_at_8_19_11_PM.png)

**Gradient vectorized**
![Gradient vectorized](https://s15.postimg.org/hjyv4khu3/Screen_Shot_2016_09_15_at_8_19_22_PM.png)

The code was also very short as a result:

```
h = sigmoid(X*theta);
J = (1/m) * (-y' * log(h) - (1-y)' * log(1 - h));

grad = (1/m) * X' * (h - y);
```

### Prediction

Given a dataset of samples, we want to find the prediction results from our hypothesis with the theta that gives the lowest cost.

The objective was to return 1 if the prediction was above or equal to the threshold of 0.5 or return 0 if it was less than 0.5.

I managed to do this in Octave in one line of code as well by doing the vectorized sigmoid hypothesis and comparing it to 0.5.

```
p = sigmoid(X*theta) >= 0.5;
```

### Microchip Classification

#### Visualizing the data
**How the data looks**
![Visualizing the microchip data](http://1.1m.yt/4Q3xEz_.png)

#### Feature Mapping
**Mapping Features to a six degree polynomial**

The data could not be linearly separated, which meant we had to create a more complex polynomial that could fit the data based on the current features. For this, we elevated the features to a sixth degree polynomial.

![Feature Mapping](http://1.1m.yt/EJ8E9Q_.png)

#### Cost Function and Gradient

**Cost Function with Regularization**
The regularization parameter is added to the cost function. To calculate the regularization parameter, we actually exclude the first theta0 as this should not be regularized.

![Cost Function](http://1.1m.yt/CQl_xZK.png)

**Gradient with Regularization**
To calculate the gradient with regularization, we calculate the regularization parameter and add it to all the gradient except for theta0 where we don't add anything.

![Gradient for theta 0 ](http://1.1m.yt/ZyznEuP.png)

![Gradient for theta j>1](http://1.1m.yt/hD9f3-g.png)

#### Underfitting (high bias), Just Right and Overfitting (high variance)

Once we were able to add regularization, I experimented with lambda being very low (0), 1 and very high (100). As a result, we can see how the decision boundary performs in each case and what was the best lambda for the just right results. We got an accuracy of 83% on the dataset with lambda 1.

| High Bias λ=0| Just Right λ=1  | High Variance λ=100  |
| ------------- |:-------------:|:-------------:|
|![High Bias](http://1.1m.yt/51lxRiS.png)|![Just Right](http://1.1m.yt/L1d3DcP.png)|![High Variance](http://1.1m.yt/sS0cwV5.png)|

<a name="linear-regression"/>
##Week 2 Linear Regression with Multiple Variables & Octave/Matlab Tutorial

### Overview of the solution
This week, we calculated the profit of a food truck company based on the data of profits each food truck has in different cities and their corresponding populations.

![Profit of food trucks by city population](http://oi64.tinypic.com/2uid4e1.jpg)

The mandatory exercises were of gradient descent with one feature and the optional ones have multiple features.

I solved the gradient descent with one feature doing an iteration over the sum of the prediction deviations and then over the number of features and then over the number of iterations that actually gradient descent run through.

![Gradient Descent algorithm](http://oi67.tinypic.com/2mwe7wl.jpg)

I also solved it with the vectorized/matriz implementation which is much quicker.

![Gradient Descent algorithm](http://oi67.tinypic.com/2mwe7wl.jpg)

Before that, I had to calculate the cost function which I did using the vectorized method.

![Cost Function](http://oi66.tinypic.com/8znsm1.jpg)

### Result
The gradient descent was able to predict after 1500 iterations, the best values for theta that would converge in the minimum. The corresponding hypothesis visualized among the data looks like this.

![Gradient Descent's Matrix implementation](http://oi66.tinypic.com/n32ed0.jpg)

With these results, we were able to predict the profit for a food truck given a city with a different population.

![Hypothesis and data](http://oi66.tinypic.com/zl6xwx.jpg)

### Visualizations

The next graphs show the surface and contour plots that allow us to visualize the minimum value of thetas that produce the most accurate hypothesis.

| Surface       | Contour Plot  |
| ------------- |:-------------:|
|![Surface](http://oi64.tinypic.com/2nh3fvm.jpg)|![Contour](http://oi66.tinypic.com/15whzlc.jpg)|


### Multiple features linear regression
The exercise is to predict the sell price of a house given two features: It's size and the number of bedrooms it has.

### Feature normalization
The first step was to normalize the features using mean normalization. This will guarantee that all features are within the range of -1 <= xi <=1 and that the normalized matrix with have mean 0 and standard deviation 1. To do this, I used dimensional analysis instead of loops to calculate the normalized matrix.

_The normalization formula was:_

![Mean normalization of features i](http://oi67.tinypic.com/332td6q.jpg)

### Cost Calculation and Gradient Descent
The vectorized/matrix implementations done previously for the cost calculation and the gradient descent also apply to the multiple variables, since we are using the same hypothesis.

### Learning rate
To get insights into what the best learning rate for the algorithm was, I plotted multiple figures, each with a learning rate that increased at about 3 times the previous rate. The best learning value found was about 1 as the algorithm started to diverge at around 1.5.

| Different Alpha Rates Tested       | Best Learning Rate found  |
| ------------- |:-------------:|
|![Alpha rates tested](http://oi64.tinypic.com/2zhe5px.jpg)|![Best Learning Rate](http://oi65.tinypic.com/2vl0djd.jpg)|


### Normal Equation
With the normal equation, we can also find theta without having to set alpha or to iterate like in gradient descent. This is good for a low amount of features but would be bad if n is very larger. The normal equation is:

![Normal Equation](http://oi65.tinypic.com/2a5aibs.jpg)
