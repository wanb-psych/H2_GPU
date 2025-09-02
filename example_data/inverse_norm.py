import pandas as pd
from scipy.stats import rankdata, norm

df = pd.read_csv('input.csv')

def inverse_normal_transform(series):
    """
    Apply rank-based inverse normal transformation to a pandas Series.
    """
    # Rank the data (average ranks for ties)
    ranks = rankdata(series, method='average')
    # Convert ranks to uniform quantiles
    u = ranks / (len(series) + 1)
    # Apply inverse normal transform
    return pd.Series(norm.ppf(u), index=series.index)

# Select only columns that contain 'node'
node_cols = [col for col in df.columns if 'node' in col]

# Apply INT only to node columns
df[node_cols] = df[node_cols].apply(inverse_normal_transform)

df.to_csv('input_inorm.csv', index=False)
