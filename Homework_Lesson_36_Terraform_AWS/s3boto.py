import boto3

s3 = boto3.client('s3', region_name='us-west-1')
bucket_name = 'maks-study-test-bucket-aws36'

s3.create_bucket(
    Bucket=bucket_name,
    CreateBucketConfiguration={
        'LocationConstraint': 'us-west-1'
    }
)

print(f"{bucket_name} ready")

local_file = 'upload.txt'
s3_key = 'upload_document.txt'

s3.upload_file(local_file, bucket_name, s3_key)

print(f"Файл {local_file} загружен {s3_key}")

response = s3.get_object_acl(Bucket=bucket_name, Key=s3_key)
print("Текущие права:", response['Grants'])

s3.put_object_acl(
    Bucket=bucket_name,
    Key=s3_key,
    ACL='public-read'
)

print(f"ACL для {s3_key} изменён на public-read")

response = s3.get_object_acl(Bucket=bucket_name, Key=s3_key)
print("Новые права:", response['Grants'])