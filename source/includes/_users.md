# 用户

## 服务简介

这个用户系统是用户系统集合，所有下属APP都会统一从这里登录获取到必要的tk。   

SERVICE_NAME:  

`bucky` prod模式使用的服务  
`bucky-stg` stg模式使用的服务  

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上app_key拼接在url中
</aside>

```shell
curl "https://watchman.ktfootball.com/bucky-stg/api/v1?app_key=APPKEY"
```

## 使用用户名登录

```shell
curl -X POST "https://watchman.ktfootball.com/bucky/api/v1/users/signin" -d "username=USERNAME&password=PASSWORD"
```

### FormData

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
username|apple|true|用户名
password|apple|true|密码

### HTTP Request

	`POST https://watchman.ktfootball.com/bucky-stg/api/v1/users/signin`

> 返回内容

```json
{
  "data": {
    "uid": 10,
    "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJrdGZvb3RiYWxsIiwic3ViIjoxMCwiZXhwIjoxNDk1Nzk2NDIwLCJhdWQiOjEwfQ.aAr2SB0qLgxvNYz506VESiZYAwMhrBiYEHJQ6llwrAo"
  }
}
```

## 使用手机号登录

```shell
curl -X POST "https://watchman.ktfootball.com/bucky/api/v1/users/signin" -d "mobile=MOBILE&password=PASSWORD"
```

### FormData

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
mobile|18651206017|true|邮箱
password|apple|true|密码

### HTTP Request

	`POST https://watchman.ktfootball.com/bucky-stg/api/v1/users/signin`

> 返回内容

```json
{
  "data": {
    "uid": 10,
    "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJrdGZvb3RiYWxsIiwic3ViIjoxMCwiZXhwIjoxNDk1Nzk2NDIwLCJhdWQiOjEwfQ.aAr2SB0qLgxvNYz506VESiZYAwMhrBiYEHJQ6llwrAo"
  }
}
```

## 使用邮箱登录

```shell
curl -X POST "https://watchman.ktfootball.com/bucky/api/v1/users/signin" -d "email=EMAIL&password=PASSWORD"
```
### FormData

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
email|apple@apple.com|true|邮箱
password|apple|true|密码

### HTTP Request

	`POST https://watchman.ktfootball.com/bucky-stg/api/v1/users/signin`

> 返回内容

```json
{
  "data": {
    "uid": 10,
    "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJrdGZvb3RiYWxsIiwic3ViIjoxMCwiZXhwIjoxNDk1Nzk2NDIwLCJhdWQiOjEwfQ.aAr2SB0qLgxvNYz506VESiZYAwMhrBiYEHJQ6llwrAo"
  }
}
```

## 根据手机号获取短信验证码

<aside class="info">
关于注册的流程的一些解释，用户直接输入手机号码来注册账户，如果手机号码已存在则可以使用下面verify接口进行验证登录，同时会标记用户手机号码是验证过的。
</aside>

```shell
curl -X POST "https://watchman.ktfootball.com/bucky/api/v1/users/signup/mobile/sms" -d "mobile=MOBILE"
```
### FormData

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
mobile|18651206017|true|手机号码

### HTTP Request

  `POST https://watchman.ktfootball.com/bucky/api/v1/users/signup/mobile/sms`

> 返回内容

```json
{
  "data": "success"
}
```

## 验证手机号码以及验证码

<aside class="info">
  使用手机验证码注册时，并不需要传入密码 password，云端也会默认使用空密码，代表不可以用密码来登录。如果需要设置密码，则传入密码字段就可以了。
</aside>
```shell
curl -X POST "https://watchman.ktfootball.com/bucky/api/v1/users/signup/mobile/verify" -d "mobile=MOBILE&code=CODE"
```
### FormData

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
mobile|18651206017|true|手机号码
code|123456|true|短信验证码
password|123456|false|密码

### HTTP Request

  `POST https://watchman.ktfootball.com/bucky/api/v1/users/signup/mobile/verify`

> 返回内容

```json
{
  "data": {
    "uid": 11,
    "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJrdGZvb3RiYWxsIiwic3ViIjoxMSwiZXhwIjoxNDk1ODU2ODg5LCJhdWQiOjExfQ.xL_T7z7l8-pNsVkIT6qyD7z_CzH7nzYjK9z0GcHMKiM"
  }
}
```

## 使用手机号码登录

<aside class="info">
  参见 根据手机号获取短信验证码 验证手机号码以及验证码
</aside>

## 请求重置密码

<aside class="info">
  参见 根据手机号获取短信验证码 验证手机号码以及验证码
</aside>

## 使用邮箱注册

<aside class="info">
  
</aside>
```shell
curl -X POST "https://watchman.ktfootball.com/bucky/api/v1/users/signup/email" -d "email=MOBILE&password=PASSWORD"
```
### FormData

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
email|banana@eurus.cn|true|邮箱账户
password|123456|true|密码

### HTTP Request

  `POST https://watchman.ktfootball.com/bucky/api/v1/users/signup/email`

> 返回内容

```json
{
  "data": {
    "uid": 11,
    "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJrdGZvb3RiYWxsIiwic3ViIjoxMSwiZXhwIjoxNDk1ODU2ODg5LCJhdWQiOjExfQ.xL_T7z7l8-pNsVkIT6qyD7z_CzH7nzYjK9z0GcHMKiM"
  }
}
```
