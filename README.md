# **Comic Game API**
* Ruby version
__ruby 2.1.5p273__

### **Base URL: https://evening-escarpment-7913.herokuapp.com/**


### **User**
* [Get All Users](#get-all-users)
`GET '/users'`
* [Register User](#register-user)
`POST '/users/register'`
* [Login User](#login-user)
`POST '/users/login'`

### **Comics**
* [Get All Comics](#get-all-comics)
`GET '/comics'`
* [Show Comic](#show-Comic)
`GET'/comic/title'`
* [Create Comic](#create-comic)
`POST '/comics/create'`
* [Get All Of User's Comics](#get-all-of-user's-comics)
`GET 'comics/user'`

### **Photos**
* [Create Photo](#create-photo)
`POST 'photos/create'`
* [Get User Photos](#get-user-photos)
`GET 'photos/user'`
* [Get A User Photo](#get-a-user-photo)
`GET 'photo/:id'`
* [Get All Users' Photos](#get-all-users'-photos)
`GET 'photos/users'`


### **Get All Users**

`GET '/users'`

Params:
  * none
  * Returns and array of all users


Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{
  "user": [
    {
      "id": 1,
      "username": "jsmith1234",
      "access_token": "083a050c4b1556c5b8ca68612f2b5c9f",
      "email": "jsmith@tiy.com"
    },
    {
      "id": 2,
      "username": "BJohnson1234",
      "access_token": "c9d85bbde2fde34c1cab0e1995216043",
      "email": "BJohnson@tiy.com"
    },
    {
      "id": 3,
      "username": "TMcGraw1234",
      "access_token": "908ab2d13e18b6d436c2908f83fe9adf",
      "email": "TMcGraw@tiy.com"
    }
  ]
}```
Example failure:
```json
  {"errors": ["errors":["Email has already been taken"]]}
```


### **Register User**

`POST '/users/register'`

Params:
  * username: a string
  * email: a string
  * password: a string

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{
  "user": {
    "id": 1,
    "username": "jsmith1234",
    "access_token": "083a050c4b1556c5b8ca68612f2b5c9f",
    "email": "jsmith@tiy.com"
  }
}
```
Example failure:
```json
  {"errors": ["errors":["Email has already been taken"]]}
```


### **Login User**

`POST '/users/login'`

Params:
  * username: a string
  * password: a string

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{
  "user": {
    "id": 3,
    "username": "TMcGraw1234",
    "access_token": "908ab2d13e18b6d436c2908f83fe9adf",
    "email": "TMcGraw@tiy.com"
  }
}
```
Example failure:
```json
{ "message":"Invalid Login" }
```



### **Get All Comics**

`GET 'comics'`

Params:
  * none
* Returns scoreboard in json

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "user":{"id":2,
  "username":"JDrama2000",
  "points":20 }}

```
Example failure:
```json
  {"errors": ["errors":["Error"]]}
```

### **Show Comic**

`GET '/posts'`

Params:
  * none
  * Returns and array of all posts


Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{
  "post": [
    {
<<<<<<< Updated upstream
      "image": "www.photos.com/photos1",
      "user_id": 1,
      "answer": "answer",
      "complete": false
    },
    {
      "image": "www.photos.com/photos2",
      "user_id": 2,
      "answer": "answer",
      "complete": false
    },
    {
      "image": "www.photos.com/photos3",
      "user_id": 1,
      "answer": "answer",
      "complete": false
    },
    {
      "image": "www.photos.com/photos4",
      "user_id": 4,
      "answer": "answer",
=======
      "image": "www.photo.com/photo",
      "user_id": 1,
      "answer": 1,
      "complete": false
    },
    {
      "image": "www.photo.com/photo",
      "user_id": 2,
      "answer": 1,
      "complete": false
    },
    {
      "image": "www.photo.com/photo",
      "user_id": 3,
      "answer": 1,
      "complete": false
    },
    {
      "image": "www.photo.com/photo",
      "user_id": 4,
      "answer": 1,
>>>>>>> Stashed changes
      "complete": false
    }
  ]
}
```
Example failure:
```json
  {"errors": ["errors":["Error when loading posts"]]}
```


### **Create Comic**

GET '/posts/:id'

Params:
  * none
* Returns a single post

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "post":{"image":"image file",
  "user_id":3,
  "answer":"correct answer",
  "complete":false,
  "answer_1":"incorrect answer",
  "answer_2":"incorrect answer",
  "answer_3":"incorrect answer"}}
```
Example failure:
```json
{ "message":"Access Token Not Found" }
```



### **Get All Of User's Comics**

`POST '/posts'`

Params:
  * image: a string
  * answer: a string
  * answer_1: a string
  * answer_2: a string
  * answer_3: a string


Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "post":{"id":6,
  "image":"null",
  "user_id":3,
  "answer":"correct",
  "complete":false,
  "answer_1":"incorrect",
  "answer_2":"incorrect",
  "answer_3":"incorrect"}}
```
Example failure:
```json
{ "message":"Access Token Not Found" }
```



### **Create Photo**

`DELETE '/posts/:id'`

Params:
  * none
* Removes validated users' post

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{"message":"Post deleted"}
```
Example failure:
```json
{ "message":"ERROR" }
```



### **Get User Photos**

`POST 'posts/:id/guesses'`

Params:
  * guess: "string"

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "user":{"id":2,
  "guess":"A",
  "point":1,
  "user_id":3,
  "post_id":6,
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
```
Example failure:
```json
{ "message":"Access Token Not Found" }
```

### **Get A User Photo**

`POST 'posts/:id/guesses'`

Params:
  * guess: "string"

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "user":{"id":2,
  "guess":"A",
  "point":1,
  "user_id":3,
  "post_id":6,
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
```
Example failure:
```json
{ "message":"Access Token Not Found" }
```
### **Get All Users' Photos**

`POST 'posts/:id/guesses'`

Params:
  * guess: "string"

Response:
  Status Code: 201 if successful, 422 if unsuccessful

Example success:  
```json
{ "user":{"id":2,
  "guess":"A",
  "point":1,
  "user_id":3,
  "post_id":6,
  "access_token":"25a0eea82cd2fd34c34ddadc2447fb92"}}
```
Example failure:
```json
{ "message":"Access Token Not Found" }
```
