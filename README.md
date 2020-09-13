УСТАНОВКА :

ВЫПОЛНИТЬ КОМАНДУ : 

composer install (update);
npm install (при необходимости);
php artisan key:generate;
php artisan migrate;
php artisan passport:install;
php artisan storage:link(при необходимости);
php artisan optimize:clear(при необходимости);
Переименовать файл .env.example в файл .env и настроить подключение к базе данных и пр;
Дамп базы данный hygge-api.sql;

СТАРТОВАЯ СТРАНИЦА WEB :
public\index.php

Использованы :
-Laravel;
-Passport;
Client ID: 1
Client secret: rTMqqQ8otVQlyqIvrB3AxrImKkg4q1LfLQklEpQO
Password grant client created successfully.
Client ID: 2
Client secret: F4sEHT1aXnVA37DDOiuKT9hr1csOCkAIO1aaw0Tp

Список API routers с методами

REGISTER: метод:POST, URL:http:{URL}/api/register
Параметры запроса:
    $data=  array(
        'username'=> '123456789',
        'email'=> '1@1',
        'password'=> '123456789',
        'c_password'=>'123456789',
    );
Нет ошибок :    
1-Ответ 200
2-Тело ответа на запрос
Первый пользователь 
{
    "success": true,
    "data": {
        "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMTQ1NmZkZWYzODM5ZWMxZDk5YWRjNzgyY2IzYjM3MTkyZDMxYzk0YTk3NzU2MzZjNDhkMGE4MGZmZmY2MjIzYzUwMjk3MDBhMmMwMWI4ODUiLCJpYXQiOjE1OTk5OTY0OTIsIm5iZiI6MTU5OTk5NjQ5MiwiZXhwIjoxNjMxNTMyNDkyLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.KarR4kb8ENNrZA9lecURxRspMrljc0orfDcwPNkidrm4zJgwyW2DkfaaRR2gGWb0H304WpFOGPAJEr352J7_60c-79XzDNyl1nuGa30Yl4hOJTvfEW_YrdrX0457GIvM8LU5PdO_nuo7QLujjVuVCEPzSVnJS8K4FfJvjJjq64s8tW0QrfHp5PeFa32h8dkXamEPGrDYbLF_V2lKAv-dsseyZ9VzWY2b2JjRCIHt238TaTau5HDqFUPKvfOmTB5ErHTJKc241hz0oTCCm-ofKcuXjq-O44vuGcV6q9rj0wZ647vHIUCQb8ubpJd-SN1U3lkS4GpCy_EVWIZwLANBH6rVew0LGcrXLDHtdrGR0rVdSpCDyIXJvXmvIaB9NiL-HcXP0jCFF057hEAM6GACXCjogHTrh_mp99V7hTCB7GgEnrjgIFm0meeTeElPO4T5e4fp70JvrMqASm04AtK_gt7zzfu7x2Gi_rnHzevm9uGECxMfRHjeqNEYl-dLgq_z9mCwhrF8zfD86XHggxNKvNQNaCNTb9Fqtd3naMGeUtDW6HFou2Q6zKR1IaDZoiJONUUkLV4MUkj7tu54UzIjlTr2pD6otIBoDMhuFaS3YCnjDC0n3ByDBRIfETxbpqod7BtWUtOYEY0AUjHdxP3qlabRVwok39MReXHZaD5eX1g",
        "name": null
    },
    "message": "User register successfully."
}
Второй  пользователь 
{
{
    "success": true,
    "data": {
        "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMGI2MTRmOWFhNDQ0YmMxNWNmYmZiZDRiZWFmZDY0NTJkZjJkOGEyZDBmYzBjYWQwM2U3ZGNiMzE3MGJkYzcwYTEzOGJiNzRiMWU2MmJiYmEiLCJpYXQiOjE1OTk5OTY3MjIsIm5iZiI6MTU5OTk5NjcyMiwiZXhwIjoxNjMxNTMyNzIyLCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.Tn0TqERrx_b0B7At-3ujy3lQ4NlRDgZFwStffC7TwOGqM6OH_b9r6UombwUDfIhfGsBUJw_aBBXl7s2HHmHYW7jDkyx7qrk5bdn5y4EjyW0fRZ1PYphWVTHBdEsOKRikyLsRIWLnWlLEDgpt5YUN8uZTflgWYhHvmdr8_m02JThIgUZZIzzxzRjTamUAXO5KQSyI-batMvxDVvemdYE31-uU4QHcGQA0eA6v0ZD5AuwIeyAQO-4PUfKDI9fCrv19opIH03xbX8lzkMyoK4gEPKki_9lj5KUvdhnywcHy5mLkLfr5fvttkMMH-o5oj_Zd3pF278SAD5d-L4GQChNPG8Gag7ASG0e3AjMYO8Y4ewNCVxyzTgS2iRFCtciBdkZWQDTghmSIswSHfSXlnrkudMLNglSHsuZUVY02ytoeBsFvkZBBzcTkcCkc1YBnDzb9BYFUWoAuL7ql0PsHoE2WMXaVV3yryHhkGthLgIgSjtz_Q6Tb0N65X4lAt6VQGYg9IEhVs5-_09zko2ENT-o5g0xlEqh3Q_HI6OwStiUN5TAh4D2oYtLa78jE_AwJLf3OIIGyheZeCQ31WJwvRSvmONmrXKmNzcDBIZnaZb1D4fVWTbgCrE6VAMaAUgm-TZSWF7hHlxGVUB4ync_LiiEZmjdLWDR9PaTF41jZ9axz1H4",
        "name": null
    },
    "message": "User register successfully."
}

Ошибка :    
1-Ответ 404
2-Тело ответа на запрос
{
    "success": false,
    "message": "Validation Error.",
    "data": {
        "name": [
            "The name field is required."
        ]
    }
}

LOGIN  метод:GET, URL:http:{URL}/oauth/token
Параметры запроса:
Параметры запроса:
    $data=  array(
        'username'=>'1@1',
        'password'=> '123456789',
        'grant_type'=> 'password',
        'client_id'=> '2',
        'client_secret'=> 'F4sEHT1aXnVA37DDOiuKT9hr1csOCkAIO1aaw0Tp',
        'scope'=> '*',
    );
    
Нет ошибок :    
1-Ответ 200
2-Тело ответа на запрос
{
    "token_type": "Bearer",
    "expires_in": 31536000,
    "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiYjU4YmExOGQwNDMxYmUwMjM2ZDU2MGI2MjlkODdjYTNmMmI1YzU4NjU1MjM4ZjI1MzdhNDY4M2U2ZWQ0NjJlMTk5MTA2NjAwZTBkODMzMjMiLCJpYXQiOjE1OTk5OTkyODIsIm5iZiI6MTU5OTk5OTI4MiwiZXhwIjoxNjMxNTM1MjgyLCJzdWIiOiIxIiwic2NvcGVzIjpbIioiXX0.iCVsTbJgpd2SJFj_d-k96xbHHG6mLwYaK5l4mybnWIdALyv-i1z7KQi1yXQmc-c1zXxPKYgCOh8DOWwoc-2cX2eD4BdTDLgzmo1DJIUohNkSD_ZJ8CWlnRUhkdpZSZTatjind7Nr31FZ3L_v-z6VEgoSDWu-jv8SV0vhNbkDsYVK0K7cHaazWTgelwqjtcAqa_34JH5MMV6SIpjkc_GDHjHhs-L3feruz4HiFLw1b2KZboM4Y65QsFLGSr8o8BUZfoTPvunTcpBOBlW9qK1F9coqa3RB8mE3CUmzjyq_3j1WjloznTI2ztYOPpTBr6ibrdXqbNFnBddoo-BbT5gHq62JazHNJG4WzGs1WkaLAPQC197XwfuRpx1LoBVkhaX8V7RNCrNTh4Q74gkQubps9JbtqILZmtK0qxhMEAVVcy0ZYAHwVSCCvepeF_JHJ0FeMv0b02wI6hLRqfEjBke4EjFO4I79V-P9AA5skgywGogGIG5smIIjORRlGOuYdTGYSlk80lTSga0pqIed3XPSMIxI6ulWdBA0InOclpNS-Ljgkw0Tye1qK3hlwkpnkniV300AILfJdryY4HLGeHtht57StVEzHpkdc6PDLHDFn8l3xF999apvml4DdsPte-FvxVGNgOgKVviE5IjXZMZ7a4QXMfzDISAHFxEAk4Nf7i0",
    "refresh_token": "def50200fd72ee7ec78a02020a25a52c3ed579cf4a5846f01f92f8bf7d434bb2d3d1308cca6db3fbddcd4a2e06341f44213ebfcc6284bef5e18cc44d743f82e6b322c3b7106636bd7a2a6811c5e8931d13e6297820e111f90dd5f5c53e262718889e2cde1c94fbf99b9fdeb210dbca5e62322d1af986dbe0cb6ab50a65a6e215379a1e00bf5e03f99f7777954074c7078d29fdb3e00fa13bc3888999d5cc83933b7595a7ee8613e3eb737a1f906b920858f30e415de4b5230d168f34fafa10aa3f1adc971aae8933f57a0282c4b0573132c28ad8638474d7e2bfd326e70b98fbabf1ae0ca7955af7712ef9864ec8fd1d13c945fc349fb9a4bf88d79220494128cc3ed3a3a8072a7fd1f78c96cc3f5de276fe17d9e33b6f83d1167aa9c789db35a346fcfd8461b039a32a67e8e56b1ab79bc13fed20ef1c410b326baefc1ad5b77e32e7fba3960115d65d68e00820346297a03794b27ae8f7be6aca8160a88bf85a008d47"
}    
Ошибка :    
1-Ответ 401
2-Тело ответа на запрос
{
    "error": "invalid_client",
    "error_description": "Client authentication failed",
    "message": "Client authentication failed"
}

All Users: метод:GET, URL:http:{URL}/api/users
$accessToken='eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiYjU4YmExOGQwNDMxYmUwMjM2ZDU2MGI2MjlkODdjYTNmMmI1YzU4NjU1MjM4ZjI1MzdhNDY4M2U2ZWQ0NjJlMTk5MTA2NjAwZTBkODMzMjMiLCJpYXQiOjE1OTk5OTkyODIsIm5iZiI6MTU5OTk5OTI4MiwiZXhwIjoxNjMxNTM1MjgyLCJzdWIiOiIxIiwic2NvcGVzIjpbIioiXX0.iCVsTbJgpd2SJFj_d-k96xbHHG6mLwYaK5l4mybnWIdALyv-i1z7KQi1yXQmc-c1zXxPKYgCOh8DOWwoc-2cX2eD4BdTDLgzmo1DJIUohNkSD_ZJ8CWlnRUhkdpZSZTatjind7Nr31FZ3L_v-z6VEgoSDWu-jv8SV0vhNbkDsYVK0K7cHaazWTgelwqjtcAqa_34JH5MMV6SIpjkc_GDHjHhs-L3feruz4HiFLw1b2KZboM4Y65QsFLGSr8o8BUZfoTPvunTcpBOBlW9qK1F9coqa3RB8mE3CUmzjyq_3j1WjloznTI2ztYOPpTBr6ibrdXqbNFnBddoo-BbT5gHq62JazHNJG4WzGs1WkaLAPQC197XwfuRpx1LoBVkhaX8V7RNCrNTh4Q74gkQubps9JbtqILZmtK0qxhMEAVVcy0ZYAHwVSCCvepeF_JHJ0FeMv0b02wI6hLRqfEjBke4EjFO4I79V-P9AA5skgywGogGIG5smIIjORRlGOuYdTGYSlk80lTSga0pqIed3XPSMIxI6ulWdBA0InOclpNS-Ljgkw0Tye1qK3hlwkpnkniV300AILfJdryY4HLGeHtht57StVEzHpkdc6PDLHDFn8l3xF999apvml4DdsPte-FvxVGNgOgKVviE5IjXZMZ7a4QXMfzDISAHFxEAk4Nf7i0'
'headers' => [
    'Accept' => 'application/json',
    'Authorization' => 'Bearer '.$accessToken,
]

Параметры запроса:
    $data=  array( );
Нет ошибок :    
1-Ответ 200
2-Тело ответа на запрос
{
    "success": true,
    "data": [
        {
            "id": 1,
            "email": "1@1",
            "email_verified_at": null,
            "avatar": null,
            "username": "123456789",
            "first_name": null,
            "last_name": null,
            "gender": "m",
            "location": null,
            "verify": 0,
            "created_at": "2020-09-13 11:28:12",
            "updated_at": "2020-09-13 11:28:12"
        },
        {
            "id": 2,
            "email": "2@2",
            "email_verified_at": null,
            "avatar": null,
            "username": "123456789",
            "first_name": null,
            "last_name": null,
            "gender": "m",
            "location": null,
            "verify": 0,
            "created_at": "2020-09-13 11:32:02",
            "updated_at": "2020-09-13 11:32:02"
        }
    ],
    "message": "Users retrieved successfully."
}

Ошибка :    
1-Ответ 200
2-Тело ответа на запрос
{
    "success": true,
    "data": [],
    "message": "Users retrieved successfully."
}


ALL FRIENDS: метод:GET, URL:http:{URL}/api/friends
$accessToken='eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiYjU4YmExOGQwNDMxYmUwMjM2ZDU2MGI2MjlkODdjYTNmMmI1YzU4NjU1MjM4ZjI1MzdhNDY4M2U2ZWQ0NjJlMTk5MTA2NjAwZTBkODMzMjMiLCJpYXQiOjE1OTk5OTkyODIsIm5iZiI6MTU5OTk5OTI4MiwiZXhwIjoxNjMxNTM1MjgyLCJzdWIiOiIxIiwic2NvcGVzIjpbIioiXX0.iCVsTbJgpd2SJFj_d-k96xbHHG6mLwYaK5l4mybnWIdALyv-i1z7KQi1yXQmc-c1zXxPKYgCOh8DOWwoc-2cX2eD4BdTDLgzmo1DJIUohNkSD_ZJ8CWlnRUhkdpZSZTatjind7Nr31FZ3L_v-z6VEgoSDWu-jv8SV0vhNbkDsYVK0K7cHaazWTgelwqjtcAqa_34JH5MMV6SIpjkc_GDHjHhs-L3feruz4HiFLw1b2KZboM4Y65QsFLGSr8o8BUZfoTPvunTcpBOBlW9qK1F9coqa3RB8mE3CUmzjyq_3j1WjloznTI2ztYOPpTBr6ibrdXqbNFnBddoo-BbT5gHq62JazHNJG4WzGs1WkaLAPQC197XwfuRpx1LoBVkhaX8V7RNCrNTh4Q74gkQubps9JbtqILZmtK0qxhMEAVVcy0ZYAHwVSCCvepeF_JHJ0FeMv0b02wI6hLRqfEjBke4EjFO4I79V-P9AA5skgywGogGIG5smIIjORRlGOuYdTGYSlk80lTSga0pqIed3XPSMIxI6ulWdBA0InOclpNS-Ljgkw0Tye1qK3hlwkpnkniV300AILfJdryY4HLGeHtht57StVEzHpkdc6PDLHDFn8l3xF999apvml4DdsPte-FvxVGNgOgKVviE5IjXZMZ7a4QXMfzDISAHFxEAk4Nf7i0'
'headers' => [
    'Accept' => 'application/json',
    'Authorization' => 'Bearer '.$accessToken,
]

Параметры запроса:
    $data=  array( );
Нет ошибок :    
1-Ответ 200
2-Тело ответа на запрос
{
    "success": true,
    "data": [
        {
            "id": 2,
            "email": "2@2",
            "email_verified_at": null,
            "avatar": null,
            "username": "123456789",
            "first_name": null,
            "last_name": null,
            "gender": "m",
            "location": null,
            "verify": 0,
            "created_at": "2020-09-13 11:32:02",
            "updated_at": "2020-09-13 11:32:02",
            "pivot": {
                "user_id": 1,
                "friend_id": 2
            }
        }
    ],
    "message": "All friends."
}

Ошибка :    
1-Ответ 200
2-Тело ответа на запрос
{
    "success": true,
    "data": [],
    "message": "All friends."
}

ADD TO  FRIENDS: метод:GET, URL:http:{URL}/api/friends/add/{user}
$accessToken='eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiYjU4YmExOGQwNDMxYmUwMjM2ZDU2MGI2MjlkODdjYTNmMmI1YzU4NjU1MjM4ZjI1MzdhNDY4M2U2ZWQ0NjJlMTk5MTA2NjAwZTBkODMzMjMiLCJpYXQiOjE1OTk5OTkyODIsIm5iZiI6MTU5OTk5OTI4MiwiZXhwIjoxNjMxNTM1MjgyLCJzdWIiOiIxIiwic2NvcGVzIjpbIioiXX0.iCVsTbJgpd2SJFj_d-k96xbHHG6mLwYaK5l4mybnWIdALyv-i1z7KQi1yXQmc-c1zXxPKYgCOh8DOWwoc-2cX2eD4BdTDLgzmo1DJIUohNkSD_ZJ8CWlnRUhkdpZSZTatjind7Nr31FZ3L_v-z6VEgoSDWu-jv8SV0vhNbkDsYVK0K7cHaazWTgelwqjtcAqa_34JH5MMV6SIpjkc_GDHjHhs-L3feruz4HiFLw1b2KZboM4Y65QsFLGSr8o8BUZfoTPvunTcpBOBlW9qK1F9coqa3RB8mE3CUmzjyq_3j1WjloznTI2ztYOPpTBr6ibrdXqbNFnBddoo-BbT5gHq62JazHNJG4WzGs1WkaLAPQC197XwfuRpx1LoBVkhaX8V7RNCrNTh4Q74gkQubps9JbtqILZmtK0qxhMEAVVcy0ZYAHwVSCCvepeF_JHJ0FeMv0b02wI6hLRqfEjBke4EjFO4I79V-P9AA5skgywGogGIG5smIIjORRlGOuYdTGYSlk80lTSga0pqIed3XPSMIxI6ulWdBA0InOclpNS-Ljgkw0Tye1qK3hlwkpnkniV300AILfJdryY4HLGeHtht57StVEzHpkdc6PDLHDFn8l3xF999apvml4DdsPte-FvxVGNgOgKVviE5IjXZMZ7a4QXMfzDISAHFxEAk4Nf7i0'
'headers' => [
    'Accept' => 'application/json',
    'Authorization' => 'Bearer '.$accessToken,
]

Параметры запроса:
    $data=  array( );
Нет ошибок :    
1-Ответ 200
2-Тело ответа на запрос
{
    "success": true,
    "data": {
        "id": 2,
        "email": "2@2",
        "email_verified_at": null,
        "avatar": null,
        "username": "123456789",
        "first_name": null,
        "last_name": null,
        "gender": "m",
        "location": null,
        "verify": 0,
        "created_at": "2020-09-13 11:32:02",
        "updated_at": "2020-09-13 11:32:02"
    },
    "message": "We sent a request to add to friends."
}
Ошибка :    
1-Ответ 200
2-Тело ответа на запрос
{
    "success": true,
    "data": [],
    "message": "All friends."
}

DELETE FRIEND: метод:GET, URL:http:{URL}/api/friends/requests/delete/{user}
$accessToken='eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiYjU4YmExOGQwNDMxYmUwMjM2ZDU2MGI2MjlkODdjYTNmMmI1YzU4NjU1MjM4ZjI1MzdhNDY4M2U2ZWQ0NjJlMTk5MTA2NjAwZTBkODMzMjMiLCJpYXQiOjE1OTk5OTkyODIsIm5iZiI6MTU5OTk5OTI4MiwiZXhwIjoxNjMxNTM1MjgyLCJzdWIiOiIxIiwic2NvcGVzIjpbIioiXX0.iCVsTbJgpd2SJFj_d-k96xbHHG6mLwYaK5l4mybnWIdALyv-i1z7KQi1yXQmc-c1zXxPKYgCOh8DOWwoc-2cX2eD4BdTDLgzmo1DJIUohNkSD_ZJ8CWlnRUhkdpZSZTatjind7Nr31FZ3L_v-z6VEgoSDWu-jv8SV0vhNbkDsYVK0K7cHaazWTgelwqjtcAqa_34JH5MMV6SIpjkc_GDHjHhs-L3feruz4HiFLw1b2KZboM4Y65QsFLGSr8o8BUZfoTPvunTcpBOBlW9qK1F9coqa3RB8mE3CUmzjyq_3j1WjloznTI2ztYOPpTBr6ibrdXqbNFnBddoo-BbT5gHq62JazHNJG4WzGs1WkaLAPQC197XwfuRpx1LoBVkhaX8V7RNCrNTh4Q74gkQubps9JbtqILZmtK0qxhMEAVVcy0ZYAHwVSCCvepeF_JHJ0FeMv0b02wI6hLRqfEjBke4EjFO4I79V-P9AA5skgywGogGIG5smIIjORRlGOuYdTGYSlk80lTSga0pqIed3XPSMIxI6ulWdBA0InOclpNS-Ljgkw0Tye1qK3hlwkpnkniV300AILfJdryY4HLGeHtht57StVEzHpkdc6PDLHDFn8l3xF999apvml4DdsPte-FvxVGNgOgKVviE5IjXZMZ7a4QXMfzDISAHFxEAk4Nf7i0'
'headers' => [
    'Accept' => 'application/json',
    'Authorization' => 'Bearer '.$accessToken,
]

Параметры запроса:
    $data=  array( );
Нет ошибок :    
1-Ответ 200
2-Тело ответа на запрос
{
    "success": true,
    "data": {
        "id": 2,
        "email": "2@2",
        "email_verified_at": null,
        "avatar": null,
        "username": "123456789",
        "first_name": null,
        "last_name": null,
        "gender": "m",
        "location": null,
        "verify": 0,
        "created_at": "2020-09-13 11:32:02",
        "updated_at": "2020-09-13 11:32:02"
    },
    "message": "Reject friendship."
}
Ошибка :    
1-Ответ 200
2-Тело ответа на запрос
{
}




ADD TO  FRIENDS: метод:GET, URL:http:{URL}/api/friends/requests/accept/{user}
$accessToken='eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiYjU4YmExOGQwNDMxYmUwMjM2ZDU2MGI2MjlkODdjYTNmMmI1YzU4NjU1MjM4ZjI1MzdhNDY4M2U2ZWQ0NjJlMTk5MTA2NjAwZTBkODMzMjMiLCJpYXQiOjE1OTk5OTkyODIsIm5iZiI6MTU5OTk5OTI4MiwiZXhwIjoxNjMxNTM1MjgyLCJzdWIiOiIxIiwic2NvcGVzIjpbIioiXX0.iCVsTbJgpd2SJFj_d-k96xbHHG6mLwYaK5l4mybnWIdALyv-i1z7KQi1yXQmc-c1zXxPKYgCOh8DOWwoc-2cX2eD4BdTDLgzmo1DJIUohNkSD_ZJ8CWlnRUhkdpZSZTatjind7Nr31FZ3L_v-z6VEgoSDWu-jv8SV0vhNbkDsYVK0K7cHaazWTgelwqjtcAqa_34JH5MMV6SIpjkc_GDHjHhs-L3feruz4HiFLw1b2KZboM4Y65QsFLGSr8o8BUZfoTPvunTcpBOBlW9qK1F9coqa3RB8mE3CUmzjyq_3j1WjloznTI2ztYOPpTBr6ibrdXqbNFnBddoo-BbT5gHq62JazHNJG4WzGs1WkaLAPQC197XwfuRpx1LoBVkhaX8V7RNCrNTh4Q74gkQubps9JbtqILZmtK0qxhMEAVVcy0ZYAHwVSCCvepeF_JHJ0FeMv0b02wI6hLRqfEjBke4EjFO4I79V-P9AA5skgywGogGIG5smIIjORRlGOuYdTGYSlk80lTSga0pqIed3XPSMIxI6ulWdBA0InOclpNS-Ljgkw0Tye1qK3hlwkpnkniV300AILfJdryY4HLGeHtht57StVEzHpkdc6PDLHDFn8l3xF999apvml4DdsPte-FvxVGNgOgKVviE5IjXZMZ7a4QXMfzDISAHFxEAk4Nf7i0'
'headers' => [
    'Accept' => 'application/json',
    'Authorization' => 'Bearer '.$accessToken,
]

Параметры запроса:
    $data=  array( );
Нет ошибок :    
1-Ответ 200
2-Тело ответа на запрос
{
    "success": true,
    "data": {
        "id": 2,
        "email": "2@2",
        "email_verified_at": null,
        "avatar": null,
        "username": "123456789",
        "first_name": null,
        "last_name": null,
        "gender": "m",
        "location": null,
        "verify": 0,
        "created_at": "2020-09-13 11:32:02",
        "updated_at": "2020-09-13 11:32:02"
    },
    "message": "Add to friends."
}
Ошибка :    
1-Ответ 200
2-Тело ответа на запрос
{
}





ТЕСТОВОЕ ЗАДАНИЕ

Стек технологий: Laravel 7, PHP 7.4

Задача: Функционал друзей. Создать REST API
Пользователь может зарегистрироваться в приложении и 
отправить запрос «пригласить в друзья» любому другому пользователю.
Другой пользователь может принять или отклонить это приглашение.
В проекте должен быть документ API для всех конечных точек. 
Должен быть README с описанием того, как запустить проект локально.
Полученный код нужно отправить в публичный репозиторий 
github и поделиться ссылкой.

Дополнительная задача: 
добавить файлы docker / docker-compose 
для запуска этого проекта
