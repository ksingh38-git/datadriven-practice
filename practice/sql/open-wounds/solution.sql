from pyspark.sql import functions as F
from pyspark.sql.window import Window

window_spec = (Window.partitionBy("svc_name")
  .orderBy(F.col("fired_at").asc()))

result = alert_events.filter(F.col("resolved").isNull())
.withColumn("rn", F.row_number().over(window_spec))
.filter(F.col("rn") == 1).select("svc_name", "alert_id","severity", "status", "fired_at")
