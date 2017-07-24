# 大课间

## 服务简介

SERVICE_NAME:  

`kt-school` prod模式使用的服务  
`kt-school-stg` stg模式使用的服务  

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上app_key拼接在url中
</aside>

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1?app_key=APPKEY"
```

## 获取大课间列表

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses"
```
### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses`

> 返回内容

```json
{
    "data": [
        {
            "id": 1,
            "name": "幼儿园大课间",
            "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
            "video_url": "http://public.ktfootball.com/download/recess/幼儿园大课间.zip",
            "duration": 113,
            "strength": "中强度"
        },
        {
            "id": 2,
            "name": "大课间第一套",
            "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
            "video_url": "http://public.ktfootball.com/download/recess/大课间第一套.zip",
            "duration": 122,
            "strength": "中强度"
        },
        {
            "id": 3,
            "name": "大课间第二套",
            "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
            "video_url": "http://public.ktfootball.com/download/recess/大课间第二套.zip",
            "duration": 127,
            "strength": "中强度"
        },
        {
            "id": 4,
            "name": "大课间第三套",
            "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
            "video_url": "http://public.ktfootball.com/download/recess/大课间第三套.zip",
            "duration": 113,
            "strength": "中强度"
        },
        {
            "id": 5,
            "name": "大课间第四套",
            "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
            "video_url": "http://public.ktfootball.com/download/recess/大课间第四套.zip",
            "duration": 119,
            "strength": "中强度"
        }
    ]
}
```

## 创建大课间包

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
name|大课间第四套|true|大课间时间
requirements|整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.|true|大课间要求
video_url|http://public.ktfootball.com/download/recess/大课间第四套.zip|true|视频下载zip地址
duration|119|true|持续时间
strength|中强度|true|大课间强度


> 返回内容

```json
{
    "data":  {
        "id": 5,
        "name": "大课间第四套",
        "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
        "video_url": "http://public.ktfootball.com/download/recess/大课间第四套.zip",
        "duration": 119,
        "strength": "中强度"
    }
}
```

## 更新大课间

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses/<ID>"
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses/<ID>`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
name|大课间第四套|false|大课间时间
requirements|整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.|false|大课间要求
video_url|http://public.ktfootball.com/download/recess/大课间第四套.zip|false|视频下载zip地址
duration|119|false|持续时间
strength|中强度|false|大课间强度

```json
{
    "data":  {
        "id": 5,
        "name": "大课间第四套",
        "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
        "video_url": "http://public.ktfootball.com/download/recess/大课间第四套.zip",
        "duration": 119,
        "strength": "中强度"
    }
}
```

## 删除大课间

```shell
curl -X DELETE "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID>"
```

### HTTP Request

  `DELETE "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID>`


> 返回内容

```json
{
    "data": "success"
}
```

## 创建大课间记录

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses/<ID>/records"
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses/<ID>/records`

### Query Parameters
Parameter | Description
--------- | -----------
ID|大课间ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
cids|1|true|班级的IDs


> 返回内容

```json
 {
    "data": [1,2,3,4,5]
 }
```

## 更新大课间视频

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses/records/<RID>"
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses/records/<RID>`

### Query Parameters
Parameter | Description
--------- | -----------
RID|大课间测评ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
video_key|FX..|true|视频的key


> 返回内容

```json
{
    "data": {
        "id": 1,
        "classroom": {
            "id": 2,
            "school": 1,
            "grade": "2",
            "cls": "一班"
        },
        "recess": {
            "id": 1,
            "name": "幼儿园大课间",
            "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
            "video_url": "http://public.ktfootball.com/download/recess/幼儿园大课间.zip",
            "duration": 113,
            "strength": "中强度",
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
                    "resources": {
                        "skill_id": 1,
                        "cartoon": "http://public.ktfootball.com/download/px/03/双脚靠球教学漫画.zip",
                        "story": "http://public.ktfootball.com/download/px/03/双脚靠球漫画故事.zip",
                        "video": [
                            "http://public.ktfootball.com/download/px/03/双脚靠球初级难度.zip",
                            "http://public.ktfootball.com/download/px/03/双脚靠球中级难度.zip",
                            "http://public.ktfootball.com/download/px/03/双脚靠球高级难度.zip"
                        ]
                    }
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
                    "resources": {
                        "skill_id": 4,
                        "cartoon": "http://public.ktfootball.com/download/px/01/脚底踩球教学漫画.zip",
                        "story": "http://public.ktfootball.com/download/px/01/脚底踩球漫画故事.zip",
                        "video": [
                            "http://public.ktfootball.com/download/px/01/脚底踩球初级难度.zip",
                            "http://public.ktfootball.com/download/px/01/脚底踩球中级难度.zip",
                            "http://public.ktfootball.com/download/px/01/脚底踩球高级难度.zip"
                        ]
                    }
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
                    "resources": {
                        "skill_id": 6,
                        "cartoon": "http://public.ktfootball.com/download/px/06/踩单车教学漫画.zip",
                        "story": "http://public.ktfootball.com/download/px/06/踩单车漫画故事.zip",
                        "video": [
                            "http://public.ktfootball.com/download/px/06/踩单车初级难度.zip",
                            "http://public.ktfootball.com/download/px/06/踩单车中级难度.zip",
                            "http://public.ktfootball.com/download/px/06/踩单车高级难度.zip"
                        ]
                    }
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
                    "resources": {
                        "skill_id": 7,
                        "cartoon": "http://public.ktfootball.com/download/px/07/内晃外拨教学漫画.zip",
                        "story": "http://public.ktfootball.com/download/px/07/内晃外拨漫画故事.zip",
                        "video": [
                            "http://public.ktfootball.com/download/px/07/内晃外拨初级难度.zip",
                            "http://public.ktfootball.com/download/px/07/内晃外拨中级难度.zip",
                            "http://public.ktfootball.com/download/px/07/内晃外拨高级难度.zip"
                        ]
                    }
                },
                {
                    "id": 21,
                    "name": "脚背内侧传球",
                    "sub_title": "一剑封喉",
                    "intro": "团队配合是足球运动中不可缺少的一部分，而传球接球正是团队配合基础中的基础",
                    "description": "训练说明： 在训练前，请准备一个足球，一块可以反弹的墙壁，距离墙壁3米进行训练",
                    "category": "传球类",
                    "level": 3,
                    "gif_url": "http://public.ktfootball.com/download/still/脚背内侧传球.gif",
                    "video_url": "http://public.ktfootball.com/download/still/脚背内侧传球.mp4",
                    "resources": {
                        "skill_id": 21,
                        "cartoon": "http://public.ktfootball.com/download/px/21/脚背内侧传球教学漫画.zip",
                        "story": "http://public.ktfootball.com/download/px/21/脚背内侧传球漫画故事.zip",
                        "video": [
                            "http://public.ktfootball.com/download/px/21/脚背内侧传球初级难度.zip",
                            "http://public.ktfootball.com/download/px/21/脚背内侧传球中级难度.zip",
                            "http://public.ktfootball.com/download/px/21/脚背内侧传球高级难度.zip"
                        ]
                    }
                },
                {
                    "id": 29,
                    "name": "坚持",
                    "sub_title": "全力以赴",
                    "intro": "在练习中逐渐熟悉了球性，并且对球的感觉也有了提高，双脚左右交替踩球的动作技术可以将自身的协调性和平衡能力得到提高\r\n如果你可以熟练掌握，就不容易丢掉控球权。",
                    "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
                    "category": "足球游戏",
                    "level": null,
                    "gif_url": "http://public.ktfootball.com/download/still/全力以赴.gif",
                    "video_url": "http://public.ktfootball.com/download/still/全力以赴.mp4",
                    "resources": {
                        "skill_id": 29,
                        "cartoon": "http://public.ktfootball.com/download/px/29/坚持教学漫画.zip",
                        "story": "http://public.ktfootball.com/download/px/29/坚持漫画故事.zip",
                        "video": [
                            "http://public.ktfootball.com/download/px/29/坚持初级难度.zip",
                            "http://public.ktfootball.com/download/px/29/坚持中级难度.zip",
                            "http://public.ktfootball.com/download/px/29/坚持高级难度.zip"
                        ]
                    }
                }
            ],
            "actions": [
                "小步跑(左右交叉)",
                "脚底踩球",
                "虚晃外跨,内跨",
                "双脚靠球(幼儿)",
                "脚内侧传球(幼儿)",
                "蹲起跳跃"
            ]
        },
        "video_key": "Fq7EO2ZKZCNg67e_vb57pcWwRMpY",
        "video": "http://oqe9ssuil.bkt.clouddn.com/Fq7EO2ZKZCNg67e_vb57pcWwRMpY?e=1500889186&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:uPTuhoT_izUt-IrzvwNyYWNaAnk="
    }
}
```

## 批量更新大课间视频

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses/records/<RID>"
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses/records/`


### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
rids|1,2,3,4|true|Recess Record IDs
video_key|FX..|true|视频的key


> 返回内容

```json
{ “data”: 'success' }
```