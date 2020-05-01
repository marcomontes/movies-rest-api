# MOVIES
###### REST API for movie & people managment

##### Project Requirements:
``ruby 2.5.7, PostgreSQL``

##### How to run this project locally:
1. Clone the repository
2. Run bundle install command:
``bundle install``
3. Setup postgres database connection using this file:
``config/database.yml``
4. Run this commands:
* ``rails db:create``
* ``rails db:migrate``
* ``rails db:seed``

4. Run server server using: ``rails s``

##### Some useful commands/links:
* Run Tests: ``rake spec``
* [Heroku version of this project](https://cinema-rest-api.herokuapp.com/)
``EMAIL: admin@admin.com PASS: 4DM1N_W3B``
* Postman collection: [![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/)

##### API Endpoints examples:
---

```javascript
// GET Movies
GET https://movies-rest-api-marco.herokuapp.com/api/v1/movies
    
RESPONSE

    
```

```javascript
// GET Movie
GET https://movies-rest-api-marco.herokuapp.com/api/v1/movies/1
    
RESPONSE

    
```

```javascript
// CREATE Movie - Require Authentication
POST https://movies-rest-api-marco.herokuapp.com/api/v1/movies

    {
      "movie": {
        "title":		"Harry Pooter 1",
        "release_year": 2001,
        "casting_ids":	["10", "11"],
        "director_ids": ["12"],
        "producer_ids": ["13"]
      }
    }

RESPONSE

    
```

```javascript
// UPDATE Movie - Require Authentication
PUT https://movies-rest-api-marco.herokuapp.com/api/v1/movies/1

    {
      "movie": {
        "title":		"Harry Pooter and",
        "release_year": 2001,
        "casting_ids":	["10", "11"],
        "director_ids": ["12"],
        "producer_ids": ["13"]
      }
    }

RESPONSE

    
```

```javascript
// DELETE Movie - Require Authentication
DELETE https://movies-rest-api-marco.herokuapp.com/api/v1/movies/1
    
RESPONSE

    
```


```javascript
// GET People
GET https://movies-rest-api-marco.herokuapp.com/api/v1/people
    
RESPONSE

    
```

```javascript
// GET Person
GET https://movies-rest-api-marco.herokuapp.com/api/v1/people/1
    
RESPONSE

    
```

```javascript
// CREATE Person - Require Authentication
POST https://movies-rest-api-marco.herokuapp.com/api/v1/persons



RESPONSE

    
```

```javascript
// UPDATE Person - Require Authentication
PUT https://movies-rest-api-marco.herokuapp.com/api/v1/people/1



RESPONSE

    
```

```javascript
// DELETE Movie - Require Authentication
DELETE https://movies-rest-api-marco.herokuapp.com/api/v1/people/1
    
RESPONSE

    
```



##### LIbraris/Frameworks Uesd:
* [devise](https://github.com/rack/rack)
* [devise-jwt](https://github.com/ruby-grape/grape)
* [active_model_serializers](https://github.com/jeremyevans/sequel)
* [Bootstrap](https://github.com/dry-rb/dry-transaction)
* [Selec2]




JSON Web Token is a great solution for user authentication. It‘s a well documented standard that has many implementation across almost all popular programming languages including Ruby.

