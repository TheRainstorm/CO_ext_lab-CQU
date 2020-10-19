import numpy as np

n = 16

a = np.random.randint(n, size=(n, n))
b = np.random.randint(n, size=(n, n))

c = np.matmul(a, b)

def print_numpy_array(a):
	n = a.shape[0]
	print('[%d * %d] = {'%(n, n))
	for i in range(n):
		for j in range(n):
			if i==n-1 and j==n-1:
				print(a[i][j], end=' ')
			else:
				print(a[i][j], end=', ')
		print('\\')
	print('};')

print('A_array', end=' ')
print_numpy_array(a)
print('B_array', end=' ')
print_numpy_array(b)
print('C_ref_array', end=' ')
print_numpy_array(c)

print('C_array [%d * %d];'%(n, n))

