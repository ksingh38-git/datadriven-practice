

from pyspark.sql import SparkSession
from pyspark.sql import functions as F

df = user_sessions.filter((F.col("session_duration_sec") < 100)&(date_format(F.col("session_start"), F.lit("YYYY")) == '2026'))
.select('session_id', 'user_id', 'session_duration_sec') 
