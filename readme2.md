{
    "connector_configuration": {
      "connector.class": "io.confluent.connect.s3.S3SinkConnector",
      "s3.region": "eu-central-1",
      "format.class": "io.confluent.connect.s3.format.json.JsonFormat",
      "flush.size": "1",
      "schema.compatibility": "NONE",
      "partioner.class": "io.confluent.connect.storage.partitioner.DefaultPartitioner",
      "storage.class": "io.confluent.connect.s3.storage.S3Storage",
      "s3.bucket.name": "teclify-sandbox-143805577160-msk-backup",
      "tasks.max": "1",
      "topics": ["__consumer_offsets","test1","test2","test3"],
      "confluent.topic.bootstrap.servers": ["b-2-public.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9198","b-3-public.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9198","b-1-public.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9198"]
    }
  }