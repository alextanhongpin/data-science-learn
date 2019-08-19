
# Gradient Descent Algorithm

Types of algorithm
- batch gradient descent
- mini-batch gradient descent
- stochastic gradient descent

## Batch Gradient Descent

We sum up over all examples on each iteration when performing the updates to the parameters. Therefore, for each update, we have to sum over the examples:

```python
for i in range(num_epochs):
	grad = compute_gradient(data, params)
	params = params - learning_rate * grad
```

## Mini-batch gradient descent

Instead of going over all examples, mini-batch gradient descent sums up over lower number of examples based on the batch size. Let the batch size be chosen for a number to the power of 2.

```python
for i in range(num_epochs):
	np.random.shuffle(data)
	for batch in minibatch(data, batch_size=32):
		grad = compute_gradient(batch, params)
		params = params - learning_rate * grad
```

## Stochastic gradient descent

Instead of going through all examples, SGD performs parameters update on each example. Therefore learning is happening on every example:

```python
for i in range(num_epochs):
	np.random.shuffle(data)
	for example in data:
		grad = compute_gradient(example, params)
		params = params - learning_rate * grad
```

## References

- https://towardsdatascience.com/gradient-descent-algorithm-and-its-variants-10f652806a3
- https://ml-cheatsheet.readthedocs.io/en/latest/gradient_descent.html
- https://www.kdnuggets.com/2017/04/simple-understand-gradient-descent-algorithm.html
