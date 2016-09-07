#Excercises for the course Machine Learning by Stanford

The exercises correspond to the course available through Coursera from September through November 2016.

These are my solutions to the programming assignments.

##Week 2 Linear Regression with Multiple Variables & Octave/Matlab Tutorial

### Overview of the solution
This week, we calculated the profit of a food truck company based on the data of profits each food truck has in different cities and their corresponding populations.

![Profit of food trucks by city population](http://oi64.tinypic.com/2uid4e1.jpg)

The mandatory exercises were of gradient descent with one feature and the optional ones have multiple features.

I solved the gradient descent with one feature doing an iteration over the sum of the prediction deviations and then over the number of features and then over the number of iterations that actually gradient descent run through.

![Gradient Descent algorithm](http://oi67.tinypic.com/2mwe7wl.jpg)

Before that, I had to calculate the cost function which I did using the vectorized method.

![Cost Function](http://oi66.tinypic.com/8znsm1.jpg)

### Result
The gradient descent was able to predict after 1500 iterations, the best values for theta that would converge in the minimum. The corresponding hypothesis visualized among the data looks like this.

![Hypothesis optimized](http://oi66.tinypic.com/339uhhv.jpg)

With these results, we were able to predict the profit for a food truck given a city with a different population.

### Visualizations

The next graphs show the surface and contour plots that allow us to visualize the minimum value of thetas that produce the most accurate hypothesis.

| Surface       | Contour Plot  |
| ------------- |:-------------:|
|![Surface](http://oi64.tinypic.com/2nh3fvm.jpg)|![Contour](http://oi66.tinypic.com/15whzlc.jpg)|
