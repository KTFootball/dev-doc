# 俱乐部商品

## 获取俱乐部的商品

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/merchandises"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/merchandises`

### Url Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
target_id|0,1,2,3|true|商品类型

> 返回内容

```json
{
    "data": [
        {
            "id": 1,
            "address": "虹桥万科中心虹桥万科中心虹桥万科中心虹桥万科中心虹桥万科中心",
            "intro": "单次体验KT足球赛，约你的小伙伴一起来战！",
            "profit": "无氧高强度，青少年每天建议可进行5-10场，根据体能情况，成年人每天一场KT足球赛就足够一天运动量",
            "crowd": "青少年、足球爱好者、街头足球爱好者blah blah",
            "notice": "比赛前请进行充分热身，家长请自行照看自己的孩子哦",
            "days": "1,3,5,7",
            "time_slot": "10:00 - 18:00",
            "club": {
                "id": 2,
                "name": "测试",
                "address": "虹桥万科中心虹桥万科中心虹桥万科中心虹桥万科中心虹桥万科中心",
                "ecard": 442,
                "users": 100,
                "named_users": 2,
                "games": 4,
                "participants": 76,
                "rounds": 39
            },
            "target": "ClubCard",
            "target_id": 0,
            "amount": 2000,
            "discount_amount": 200,
            "created_at": "2017-07-04 13:18:53 +0800"
        },
        {
            "id": 4,
            "address": "虹桥万科中心虹桥万科中心虹桥万科中心虹桥万科中心虹桥万科中心",
            "intro": "单次体验KT足球赛，约你的小伙伴一起来战！",
            "profit": "无氧高强度，青少年每天建议可进行5-10场，根据体能情况，成年人每天一场KT足球赛就足够一天运动量",
            "crowd": "青少年、足球爱好者、街头足球爱好者blah blah",
            "notice": "比赛前请进行充分热身，家长请自行照看自己的孩子哦",
            "days": "1,3,5,7",
            "time_slot": "10:00 - 18:00",
            "club": {
                "id": 1,
                "name": "新华联试营业",
                "address": "新华联",
                "ecard": 9807,
                "users": 51,
                "named_users": 3,
                "games": 10,
                "participants": 52,
                "rounds": 29
            },
            "target": "ClubCard",
            "target_id": 0,
            "amount": 2000,
            "discount_amount": 2000,
            "created_at": "2017-07-04 13:18:53 +0800"
        }
    ]
}
```


## 获取包含单场参赛卡的俱乐部列表

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/merchandises"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/merchandises`

### Url Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
ctid|0,1,2,3|true|商品类型（同上）

> 返回内容

```json
{
    "data": [
        {
            "id": 1,
            "name": "新华联试营业",
            "address": "新华联",
            "ecard": 9807,
            "images": [
                "http://kt-public.tempot.com/club.png",
                "http://kt-public.tempot.com/club-sky1.png",
                "http://kt-public.tempot.com/club-sky2.png",
                "http://kt-public.tempot.com/club-sky3.png"
            ],
            "users": 51,
            "named_users": 3,
            "games": 10,
            "participants": 52,
            "rounds": 29
        },
        {
            "id": 2,
            "name": "测试",
            "address": "虹桥万科中心虹桥万科中心虹桥万科中心虹桥万科中心虹桥万科中心",
            "ecard": 439,
            "images": [
                "http://kt-public.tempot.com/club.png",
                "http://kt-public.tempot.com/club-sky1.png",
                "http://kt-public.tempot.com/club-sky2.png",
                "http://kt-public.tempot.com/club-sky3.png"
            ],
            "users": 103,
            "named_users": 2,
            "games": 4,
            "participants": 76,
            "rounds": 39
        }
    ]
}
```

## 兑换单次卡

```shell
curl -XPOST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/merchandises/exchange"
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/merchandises/exchange`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uid|1|true|用户ID
cid|1|true|俱乐部ID


> 返回内容

```json
{
"data": "success"
}
```
