__author__ = 'jerrydumblauskas'

import numpy as np
import statsmodels.api as sm
np.random.seed(12345)
X = sm.add_constant(np.random.normal(0, 20, size=30))
y = np.dot(X, [25, 3.5]) + np.random.normal(0, 30, size=30)
mod = sm.OLS(y,X).fit()
fig = sm.graphics.abline_plot(model_results=mod)
ax = fig.axes[0]
#ax.scatter(X[:,1], y)
ax.scatter(X, y)
ax.margins(.1)
import matplotlib.pyplot as plt
plt.show()
