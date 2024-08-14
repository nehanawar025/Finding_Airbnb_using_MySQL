# in terminal 
# -> pip install sqlalchemy
# -> pip install pymysql

import pandas as pd
from sqlalchemy import create_engine
import pymysql

file = 'listings.csv'

df = pd.read_csv(file)

# SQLAlchemy engine connect to MySQL database
engine = create_engine('mysql+pymysql://root:password@localhost:3306/airbnb_analysis')

table = 'listings'
df.to_sql(table, engine, index=False)

print('done')
