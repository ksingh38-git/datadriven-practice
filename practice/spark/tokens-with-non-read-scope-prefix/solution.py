
from pyspark.sql import functions as F

api_tokens.filter(~F.col("scope").like("read%")).select(F.countDistinct("owner_id").alias("non_read_owner_count"))
