```python
import pandas as pd
```


```python
df1 = pd.DataFrame({'City': ['New York', 'Chicago', 'Tokyo', 'Paris', 'New Delhi'],
                    'Temp': [59, 29, 73, 56, 48]})
df2 = pd.DataFrame({'City': ['London', 'New York', 'Tokyo', 'New Delhi', 'Paris'],
                    'Temp': [55, 55, 73, 85, 56]})
df1
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>City</th>
      <th>Temp</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>New York</td>
      <td>59</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Chicago</td>
      <td>29</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Tokyo</td>
      <td>73</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Paris</td>
      <td>56</td>
    </tr>
    <tr>
      <th>4</th>
      <td>New Delhi</td>
      <td>48</td>
    </tr>
  </tbody>
</table>
</div>




```python
# To find common rows between two DataFrame using Merge Function.
df1.merge(df2, how='inner', indicator=False)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>City</th>
      <th>Temp</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Tokyo</td>
      <td>73</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Paris</td>
      <td>56</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Find common rows between two dataframes using concat function
df = pd.concat([df1, df2])
df = df.reset_index(drop=True)
df_gpby = df.groupby(list(df.columns))
idx = [x[0] for x in df_gpby.groups.values() if len(x) != 1]
df.reindex(idx)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>City</th>
      <th>Temp</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>3</th>
      <td>Paris</td>
      <td>56</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Tokyo</td>
      <td>73</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Find rows in df1 which are not available in df2.
# To find the opposite, either reverse df1 and df2, or use 'right_only'
df = df1.merge(df2, how='outer', indicator=True).loc[lambda x: x['_merge'] == 'left_only']
df
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>City</th>
      <th>Temp</th>
      <th>_merge</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>New York</td>
      <td>59</td>
      <td>left_only</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Chicago</td>
      <td>29</td>
      <td>left_only</td>
    </tr>
    <tr>
      <th>4</th>
      <td>New Delhi</td>
      <td>48</td>
      <td>left_only</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Check if two dataframes are exactly the same.
df1.equals(df2)
```




    False




```python
# Check if columns of two dataframes are exactly same.
df2['Temp'].equals(df1['Temp'])
```




    False




```python
# Find all values in a column between two dataframes which are not common.
set(df1.Temp).symmetric_difference(df2.Temp)
```




    {29, 48, 55, 59, 85}


