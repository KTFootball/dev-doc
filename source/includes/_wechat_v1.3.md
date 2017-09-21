# 微信1.3

## 服务简介

SERVICE_NAME:  

`kt-club` prod模式使用的服务  
`kt-club-stg` stg模式使用的服务  
`kt-school` prod模式使用的服务  
`kt-school-stg` stg模式使用的服务  
`bucky` prod模式使用的服务  
`bucky-stg` stg模式使用的服务

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上 app_key 可以拼接在url中，或者HEAD中
</aside>

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1?app_key=<APPKEY>"
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1" -H 'APP_KEY: <APPKEY>'”
```

## 首页banner

### HTTP Request

  `GET https://watchman.ktfootball.com/bucky/api/v1/users/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|用户ID

> 返回内容

```json
{
    "data": {
        "rounds": 46,
        "ce": 2040,
        "rank": 1,
        "assessments": 1,
        "skills": 0,
        "best": "B"
    }
}
```

## 技能包列表

### HTTP Request

  `GET https://watchman.ktfootball.com/kt-club/api/v1/packages`

### Query Parameters
Parameter | Description
--------- | -----------

> 返回内容

```json
{
    "data": [
        {
            "id": 1,
            "name": "零基础",
            "skills": [
                4,
                5,
                1,
                2,
                3,
                6,
                7
            ],
            "count": 0
        },
        {
            "id": 2,
            "name": "基础一",
            "skills": [
                8,
                11,
                9,
                12,
                13,
                14,
                15,
                16
            ],
            "count": 0
        },
        {
            "id": 3,
            "name": "基础二",
            "skills": [
                17,
                18,
                10,
                19,
                20,
                21,
                22,
                23
            ],
            "count": 0
        }
    ]
}
```

## 技能包详情

### HTTP Request

  `GET https://watchman.ktfootball.com/kt-club/api/v1/packages/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|套餐ID

> 返回内容

```json
{
    "data": {
        "id": 1,
        "name": "零基础",
        "skills": [
            {
                "id": 1,
                "name": "双脚靠球",
                "sub_title": " 翩翩起舞",
                "intro": "双脚交替跳动触球，锻炼了的控球技术，提升球感\r\n像跳舞一样轻松，愉快，有节奏感，让你的动作很有范儿！",
                "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
                "category": "控球类",
                "level": 0,
                "gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif",
                "video_url": "http://public.ktfootball.com/download/still/双脚靠球.mp4",
                "resources": null,
                "requirements": "原地双脚靠球，记录30秒内脚内侧靠球次数；",
                "count": "一名队员&教练帮忙计数；",
                "area": "标志牌摆出2*2区域；",
                "notice": "脚触到球算一次",
                "cartoon": "http://ktfootball-video.oss-cn-shanghai.aliyuncs.com/第三集_双脚靠球.mp4"
            },
            {
                "id": 2,
                "name": "脚内侧踢球",
                "sub_title": "一击即中",
                "intro": "脚与球接触面积大，出球准确平衡，且易于撑握，主要是短距离的传球和射门的时候比较常用。\r\n",
                "description": "训练说明：\r\n在训练前，请准备一个足球，一块可以反弹的墙壁，距离墙壁3米进行训练",
                "category": "传球类",
                "level": 2,
                "gif_url": "http://public.ktfootball.com/download/still/脚内侧踢球.gif",
                "video_url": "http://public.ktfootball.com/download/still/脚内侧踢球.mp4",
                "resources": null,
                "requirements": "记录30秒内区域内按照标准完成该动作的次数；不停球；",
                "count": "一名队员&教练帮忙计数；",
                "area": "标志牌摆出3*3区域；",
                "notice": "每次踢球要在区域外触球才算一次，区域内触球不算；",
                "cartoon": "http://ktfootball-video.oss-cn-shanghai.aliyuncs.com/第四集_脚内侧踢球.mp4"
            },
            {
                "id": 3,
                "name": "脚背外侧运球",
                "sub_title": "行云流水",
                "intro": "外脚背带球节奏显快，最具有观赏性，而且传球隐蔽，利于各方向传球、斜线带球、控制球护球、假动作和过人。\r\n不要低头看球，注意速度的变化，不断变换方向和速度的曲线带球才是足球比赛中最重要的技能！",
                "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
                "category": "控球类",
                "level": 1,
                "gif_url": "http://public.ktfootball.com/download/footlesson/脚背外侧运球.gif",
                "video_url": "http://public.ktfootball.com/download/footlesson/脚背外侧运球.mp4",
                "resources": null,
                "requirements": "记录30秒内区域内按照标准完成该动作的次数；不停球；",
                "count": "一名队员&教练帮忙计数；",
                "area": "标志牌摆出3*3区域；",
                "notice": "每次踢球要在区域外触球才算一次，区域内触球不算；",
                "cartoon": "http://ktfootball-video.oss-cn-shanghai.aliyuncs.com/第五集_外脚背带球.mp4"
            },
            {
                "id": 4,
                "name": "脚底踩球",
                "sub_title": "活蹦乱跳",
                "intro": "在练习中逐渐熟悉了球性，并且对球的感觉也有了提高，双脚左右交替踩球的动作技术可以将自身的协调性和平衡能力得到提高\r\n如果你可以熟练掌握，就不容易丢掉控球权。",
                "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
                "category": "控球类",
                "level": 0,
                "gif_url": "http://public.ktfootball.com/download/still/脚底踩球.gif",
                "video_url": "http://public.ktfootball.com/download/still/脚底踩球.mp4",
                "resources": null,
                "requirements": "原地脚底踩球，记录30秒内脚底踩球次数；",
                "count": "一名队员&教练帮忙计数；",
                "area": "标志牌摆出2*2区域；",
                "notice": "脚触到球算一次",
                "cartoon": "http://ktfootball-video.oss-cn-shanghai.aliyuncs.com/第一集_脚底踩球.mp4"
            },
            {
                "id": 5,
                "name": "正脚背颠球",
                "sub_title": "无拘无束",
                "intro": "颠球是提高足球基本功的重要方法!要学好它,务必要苦练,全身放松,集中注意力,坚持,坚持,再坚持!\r\n颠球会培养你的球感，如果你变得很厉害，你就可以带球去任何地方",
                "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
                "category": "控球类",
                "level": 3,
                "gif_url": "http://public.ktfootball.com/download/still/正脚背颠球.gif",
                "video_url": "http://public.ktfootball.com/download/still/正脚背颠球.mp4",
                "resources": null,
                "requirements": "记录30秒内区域内按照标准完成该动作的次数；",
                "count": "一名队员&教练帮忙计数；",
                "area": "标志牌摆出3*3区域；",
                "notice": "如果掉地，可以累计数量；",
                "cartoon": "http://ktfootball-video.oss-cn-shanghai.aliyuncs.com/第二集_正脚背颠球.mp4"
            },
            {
                "id": 6,
                "name": "踩单车",
                "sub_title": "变幻莫测",
                "intro": "踩单车更强调于良好节奏感，其中又包括控奏与变奏，前者支持你做出连续的踏板动作，后者建立在前者之上，用于支持球场上的突发情况和多次使用。\r\n",
                "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
                "category": "控球类",
                "level": 2,
                "gif_url": "http://public.ktfootball.com/download/still/踩单车.gif",
                "video_url": "http://public.ktfootball.com/download/still/踩单车.mp4",
                "resources": null,
                "requirements": "记录30秒内区域内按照标准完成该动作的次数；",
                "count": "一名队员&教练帮忙计数；",
                "area": "标志牌摆出3*3区域；",
                "notice": "每个动作要做到标志帽算一次，未到标志帽不计数；",
                "cartoon": "http://ktfootball-video.oss-cn-shanghai.aliyuncs.com/第六集_踩单车练习.mp4"
            },
            {
                "id": 7,
                "name": "内晃外拨",
                "sub_title": "风云突变",
                "intro": "内晃外拨，动作可以迷惑对手，是你更好的带球过人。\r\n像雷一样进入，闪电一般改变方向！很快的突破变向有可能创造一个新的局面和机会",
                "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块3*2m的小场地，以保证能够完成动作练习",
                "category": "控球类",
                "level": 2,
                "gif_url": "http://public.ktfootball.com/download/still/内晃外拨.gif",
                "video_url": "http://public.ktfootball.com/download/still/内晃外拨.mp4",
                "resources": null,
                "requirements": "记录30秒内区域内按照标准完成该动作的次数；",
                "count": "一名队员&教练帮忙计数；",
                "area": "标志牌摆出3*3区域；",
                "notice": "每个动作要做到标志帽算一次，未到标志帽不计数；",
                "cartoon": "http://ktfootball-video.oss-cn-shanghai.aliyuncs.com/第七集_脚背内侧.mp4"
            }
        ],
        "count": 0
    }
}
```

## 用户购买的技能包

### HTTP Request

  `GET https://watchman.ktfootball.com/kt-club/api/v1/users/<ID>/skill_package_records`

### Query Parameters
Parameter | Description
--------- | -----------
ID|用户ID

> 返回内容

```json
{
    "data": [
        {
            "id": 1,
            "user": {
                "id": 1929,
                "uid": 1929,
                "username": "oys4MwYQ6pfOBw4vDUlyy0ixnDA8",
                "source_name": "Wei",
                "source_avatar": "http://wx.qlogo.cn/mmopen/vi_32/nd7TwgqOEc49O16frRLmXj43AqWc7viaOFKic4hk9Y7gDJtznwiaNL24McNdjzIHbAgmtSWurkV9vzwM4VxXCvuBg/0",
                "ce": 2040
            },
            "skill_package": {
                "id": 1,
                "name": "零基础",
                "skills": [
                    4,
                    5,
                    1,
                    2,
                    3,
                    6,
                    7
                ],
                "count": 1
            }
        },
        {
            "id": 2,
            "user": {
                "id": 1929,
                "uid": 1929,
                "username": "oys4MwYQ6pfOBw4vDUlyy0ixnDA8",
                "source_name": "Wei",
                "source_avatar": "http://wx.qlogo.cn/mmopen/vi_32/nd7TwgqOEc49O16frRLmXj43AqWc7viaOFKic4hk9Y7gDJtznwiaNL24McNdjzIHbAgmtSWurkV9vzwM4VxXCvuBg/0",
                "ce": 2040
            },
            "skill_package": {
                "id": 2,
                "name": "基础一",
                "skills": [
                    8,
                    11,
                    9,
                    12,
                    13,
                    14,
                    15,
                    16
                ],
                "count": 1
            }
        }
    ]
}
```


