#Excercises for the course Machine Learning by Stanford

The exercises correspond to the course available through Coursera from September through November 2016.

These are my solutions to the programming assignments.

#### Table of Contents
[Week 3 - Logistic Regression](#logistic-regression)
[Week 2 - Linear Regression with Multiple Variables](#linear-regression)

<a name="logistic-regression"/>
##Week 3 Logistic Regression



<a name="logistic-regression"/>
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
