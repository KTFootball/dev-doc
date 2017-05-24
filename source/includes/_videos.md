# 视频 qiniu

## 获取上传凭证 uptoken

```shell
curl "https://watchman.ktfootball.com/bucky-stg/api/v1/videos/uptoken?app_key=APPKEY"
  
```

### HTTP Request

	`GET https://watchman.ktfootball.com/bucky-stg/api/v1/videos/uptoken?app_key=APPKEY`

<aside class="success">
请求请带上app_key
</aside>

> 返回内容

```json
{
  "data": {
    "uptoken": "2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:FUEG0LOXWtD34hkvFINjmFKbNAM=:eyJzY29wZSI6Imt0LXZpZGVvLXN0ZyIsImNhbGxiYWNrVXJsIjoiaHR0cDovL2J1Y2t5LXN0Zy5rdGZvb3RiYWxsLmNvbS9hcGkvdjEvdmlkZW9zIiwiY2FsbGJhY2tCb2R5Ijoia2V5PSQoa2V5KSZleHQ9JChleHQpJmluZm89JChhdmluZm8pJnVpZD0kKHg6dWlkKSIsImRlYWRsaW5lIjoxNDk1NjM5ODg5fQ=="
  }
}
```

## 视频上传

### SDK Request

获取到以上的上传凭证，使用七牛SDK上传。

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
x:uid|1|true|上传的用户的uid