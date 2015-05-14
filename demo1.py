__author__ = 'jerrydumblauskas'
import statsmodels.api as sm
import patsy
import pandas as pd
import matplotlib.pyplot as plt
import requests

# 1 -- GET THE FILE AND SAVE IT (1993 College information)
# r = requests.get("http://mathforum.org/workshops/sum96/data.collections/datalibrary/colleges.XL.zip.xls")
# with open("/Users/jerrydumblauskas/Downloads/tst_python.xls", 'wb') as fd:
#     fd.write(r.content)

# 2 -- READ THE EXCEL FILE AND CREATE A DATAFRAME
df = pd.read_excel("/Users/jerrydumblauskas/Downloads/tst_python.xls", skiprows=1)

# 2.5 -- WTF
df.rename(columns={'Graduation rate':'Graduation_rate'}, inplace=True)

# 3 -- RUN THE REGRESSION AND FIT THE MODEL
y, X = patsy.dmatrices("Graduation_rate ~ ACT", data=df, return_type='dataframe')
result_model = sm.OLS(y, X) .fit()   # Describe and fit model

# 4 -- DISPLAY DATA
fig = sm.graphics.plot_fit(result_model, "ACT")
plt.show()
