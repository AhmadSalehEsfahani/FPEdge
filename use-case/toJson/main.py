import pandas as pd


field_names = ("valid", "part_id", "age", "BMI", "clinically-at-risk")
df = pd.read_csv(input(".csv absolute file path: "), skipinitialspace=True, usecols=field_names)
df["part_id"] = df["part_id"].str.extract('(\d+)', expand=False)
df.to_json(input(".json absolute file path: "), orient='records', lines=True)
