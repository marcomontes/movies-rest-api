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
* Run Tests: ``rails test``
* [Heroku version of this project](https://movies-rest-api-marco.herokuapp.com/)
``EMAIL: admin@admin.com PASS: 4DM1N_W3B``
* Postman collection: [![Run in Postman](https://run.pstmn.io/button.svg)](https://www.getpostman.com/collections/a4afab3aaa14ae4a3986)

##### Libraries/Frameworks Uesd:
* [devise] Used for authentication. (Excellent Gem, used in a lot of projects, with good support and documentation.)
* [devise-jwt] Used for authentication using JSON Web Token on API (It‘s a well documented standard that has many implementation across almost all popular programming languages including Ruby.)
* [active_model_serializers] (An easy way to render JSON data on API responses.)
* [Bootstrap] (Very common open-source toolkit for Frontend development, used in a lot of projects, with excellent support, documentation and free resources.)
* [Selec2] (Good replacement for HTML select boxes, customizable and with support for searching, tagging, remote data sets, infinite scrolling, and many other highly used options.)


##### API Endpoints examples:
---

```javascript
// API LOGIN
POST https://movies-rest-api-marco.herokuapp.com/api/login.json

  {	
      "api_user": {
          "email":"admin@admin.com",
          "password":"4DM1N_W3B"
      }
  }

```
---

```javascript
// GET Movies
GET https://movies-rest-api-marco.herokuapp.com/api/v1/movies
    
RESPONSE

  [
      {
          "id": 5,
          "title": "The Lord of the Rings: The Fellowship of the Ring",
          "release_year": "MMI",
          "casting": [
              {
                  "first_name": "Elijah",
                  "last_name": "Wood",
                  "aliases": [
                      "Frodo",
                      "Hobbit"
                  ]
              },
              {
                  "first_name": "Ian",
                  "last_name": "McKellen",
                  "aliases": [
                      "Gandalf",
                      "The Wizard"
                  ]
              },
              {
                  "first_name": "Orlando",
                  "last_name": "Bloom",
                  "aliases": [
                      "Legolas",
                      "Elve"
                  ]
              },
              {
                  "first_name": "Liv",
                  "last_name": "Tyler",
                  "aliases": [
                      "Arwen",
                      "Elf"
                  ]
              }
          ],
          "directors": [
              {
                  "first_name": "Peter",
                  "last_name": "Jackson",
                  "aliases": []
              }
          ],
          "producers": [
              {
                  "first_name": "Barrie",
                  "last_name": "Osborne",
                  "aliases": []
              },
              {
                  "first_name": "Fran",
                  "last_name": "Walsh",
                  "aliases": []
              },
              {
                  "first_name": "Tim",
                  "last_name": "Sanders",
                  "aliases": []
              }
          ]
      },
      {
          "id": 6,
          "title": "The Lord of the Rings: The Two Towers",
          "release_year": "MMII",
          "casting": [
              {
                  "first_name": "Elijah",
                  "last_name": "Wood",
                  "aliases": [
                      "Frodo",
                      "Hobbit"
                  ]
              },
              {
                  "first_name": "Ian",
                  "last_name": "McKellen",
                  "aliases": [
                      "Gandalf",
                      "The Wizard"
                  ]
              },
              {
                  "first_name": "Orlando",
                  "last_name": "Bloom",
                  "aliases": [
                      "Legolas",
                      "Elve"
                  ]
              },
              {
                  "first_name": "Liv",
                  "last_name": "Tyler",
                  "aliases": [
                      "Arwen",
                      "Elf"
                  ]
              }
          ],
          "directors": [
              {
                  "first_name": "Peter",
                  "last_name": "Jackson",
                  "aliases": []
              }
          ],
          "producers": [
              {
                  "first_name": "Barrie",
                  "last_name": "Osborne",
                  "aliases": []
              },
              {
                  "first_name": "Fran",
                  "last_name": "Walsh",
                  "aliases": []
              }
          ]
      },
      {
          "id": 7,
          "title": "The Lord of the Rings: The Return of the King",
          "release_year": "MMIII",
          "casting": [
              {
                  "first_name": "Elijah",
                  "last_name": "Wood",
                  "aliases": [
                      "Frodo",
                      "Hobbit"
                  ]
              },
              {
                  "first_name": "Ian",
                  "last_name": "McKellen",
                  "aliases": [
                      "Gandalf",
                      "The Wizard"
                  ]
              },
              {
                  "first_name": "Orlando",
                  "last_name": "Bloom",
                  "aliases": [
                      "Legolas",
                      "Elve"
                  ]
              },
              {
                  "first_name": "Liv",
                  "last_name": "Tyler",
                  "aliases": [
                      "Arwen",
                      "Elf"
                  ]
              }
          ],
          "directors": [
              {
                  "first_name": "Peter",
                  "last_name": "Jackson",
                  "aliases": []
              }
          ],
          "producers": [
              {
                  "first_name": "Barrie",
                  "last_name": "Osborne",
                  "aliases": []
              },
              {
                  "first_name": "Fran",
                  "last_name": "Walsh",
                  "aliases": []
              }
          ]
      },
      {
          "id": 8,
          "title": "Ad Astra",
          "release_year": "MMXIX",
          "casting": [
              {
                  "first_name": "Liv",
                  "last_name": "Tyler",
                  "aliases": [
                      "Arwen",
                      "Elf"
                  ]
              },
              {
                  "first_name": "Brad",
                  "last_name": "Pitt",
                  "aliases": []
              }
          ],
          "directors": [],
          "producers": [
              {
                  "first_name": "Brad",
                  "last_name": "Pitt",
                  "aliases": []
              }
          ]
      }
  ]
    
```

```javascript
// GET Movie
GET https://movies-rest-api-marco.herokuapp.com/api/v1/movies/5
    
RESPONSE

  {
      "id": 5,
      "title": "The Lord of the Rings: The Fellowship of the Ring",
      "release_year": "MMI",
      "casting": [
          {
              "first_name": "Elijah",
              "last_name": "Wood",
              "aliases": [
                  "Frodo",
                  "Hobbit"
              ]
          },
          {
              "first_name": "Ian",
              "last_name": "McKellen",
              "aliases": [
                  "Gandalf",
                  "The Wizard"
              ]
          },
          {
              "first_name": "Orlando",
              "last_name": "Bloom",
              "aliases": [
                  "Legolas",
                  "Elve"
              ]
          },
          {
              "first_name": "Liv",
              "last_name": "Tyler",
              "aliases": [
                  "Arwen",
                  "Elf"
              ]
          }
      ],
      "directors": [
          {
              "first_name": "Peter",
              "last_name": "Jackson",
              "aliases": []
          }
      ],
      "producers": [
          {
              "first_name": "Barrie",
              "last_name": "Osborne",
              "aliases": []
          },
          {
              "first_name": "Fran",
              "last_name": "Walsh",
              "aliases": []
          },
          {
              "first_name": "Tim",
              "last_name": "Sanders",
              "aliases": []
          }
      ]
  }
    
```

```javascript
// CREATE Movie - Require Authentication
POST https://movies-rest-api-marco.herokuapp.com/api/v1/movies

    {
        "movie": {
          "title":		"Fight Club",
          "release_year": 1999,
          "casting_ids":	["18"],
          "director_ids": [],
          "producer_ids": []
        }
    }

RESPONSE

  {
      "id": 10,
      "title": "Fight Club",
      "release_year": "MCMXCIX",
      "casting": [
          {
              "first_name": "Brad",
              "last_name": "Pitt",
              "aliases": []
          }
      ],
      "directors": [],
      "producers": []
  }
    
```

```javascript
// UPDATE Movie - Require Authentication
PUT https://movies-rest-api-marco.herokuapp.com/api/v1/movies/10

  {
      "movie": {
        "title":		"Fight Club (by David Fincher)",
        "release_year": 1999,
        "casting_ids":	["18"],
        "director_ids": [],
        "producer_ids": []
      }
  }

RESPONSE

  {
      "id": 10,
      "title": "Fight Club (by David Fincher)",
      "release_year": "MCMXCIX",
      "casting": [
          {
              "first_name": "Brad",
              "last_name": "Pitt",
              "aliases": []
          }
      ],
      "directors": [],
      "producers": []
  }
    
```

```javascript
// GET People
GET https://movies-rest-api-marco.herokuapp.com/api/v1/people
    
RESPONSE

  [
      {
          "id": 10,
          "first_name": "Peter",
          "last_name": "Jackson",
          "aliases": [],
          "movies_as_actor": [],
          "movies_as_director": [
              {
                  "title": "The Lord of the Rings: The Fellowship of the Ring",
                  "release_year": "MMI"
              },
              {
                  "title": "The Lord of the Rings: The Two Towers",
                  "release_year": "MMII"
              },
              {
                  "title": "The Lord of the Rings: The Return of the King",
                  "release_year": "MMIII"
              }
          ],
          "movies_as_producer": []
      },
      {
          "id": 11,
          "first_name": "Barrie",
          "last_name": "Osborne",
          "aliases": [],
          "movies_as_actor": [],
          "movies_as_director": [],
          "movies_as_producer": [
              {
                  "title": "The Lord of the Rings: The Fellowship of the Ring",
                  "release_year": "MMI"
              },
              {
                  "title": "The Lord of the Rings: The Two Towers",
                  "release_year": "MMII"
              },
              {
                  "title": "The Lord of the Rings: The Return of the King",
                  "release_year": "MMIII"
              }
          ]
      },
      {
          "id": 12,
          "first_name": "Fran",
          "last_name": "Walsh",
          "aliases": [],
          "movies_as_actor": [],
          "movies_as_director": [],
          "movies_as_producer": [
              {
                  "title": "The Lord of the Rings: The Fellowship of the Ring",
                  "release_year": "MMI"
              },
              {
                  "title": "The Lord of the Rings: The Two Towers",
                  "release_year": "MMII"
              },
              {
                  "title": "The Lord of the Rings: The Return of the King",
                  "release_year": "MMIII"
              }
          ]
      },
      {
          "id": 13,
          "first_name": "Tim",
          "last_name": "Sanders",
          "aliases": [],
          "movies_as_actor": [],
          "movies_as_director": [],
          "movies_as_producer": [
              {
                  "title": "The Lord of the Rings: The Fellowship of the Ring",
                  "release_year": "MMI"
              }
          ]
      },
      {
          "id": 14,
          "first_name": "Elijah",
          "last_name": "Wood",
          "aliases": [
              "Frodo",
              "Hobbit"
          ],
          "movies_as_actor": [
              {
                  "title": "The Lord of the Rings: The Fellowship of the Ring",
                  "release_year": "MMI"
              },
              {
                  "title": "The Lord of the Rings: The Two Towers",
                  "release_year": "MMII"
              },
              {
                  "title": "The Lord of the Rings: The Return of the King",
                  "release_year": "MMIII"
              }
          ],
          "movies_as_director": [],
          "movies_as_producer": []
      },
      {
          "id": 15,
          "first_name": "Ian",
          "last_name": "McKellen",
          "aliases": [
              "Gandalf",
              "The Wizard"
          ],
          "movies_as_actor": [
              {
                  "title": "The Lord of the Rings: The Fellowship of the Ring",
                  "release_year": "MMI"
              },
              {
                  "title": "The Lord of the Rings: The Two Towers",
                  "release_year": "MMII"
              },
              {
                  "title": "The Lord of the Rings: The Return of the King",
                  "release_year": "MMIII"
              }
          ],
          "movies_as_director": [],
          "movies_as_producer": []
      },
      {
          "id": 16,
          "first_name": "Orlando",
          "last_name": "Bloom",
          "aliases": [
              "Legolas",
              "Elve"
          ],
          "movies_as_actor": [
              {
                  "title": "The Lord of the Rings: The Fellowship of the Ring",
                  "release_year": "MMI"
              },
              {
                  "title": "The Lord of the Rings: The Two Towers",
                  "release_year": "MMII"
              },
              {
                  "title": "The Lord of the Rings: The Return of the King",
                  "release_year": "MMIII"
              }
          ],
          "movies_as_director": [],
          "movies_as_producer": []
      },
      {
          "id": 17,
          "first_name": "Liv",
          "last_name": "Tyler",
          "aliases": [
              "Arwen",
              "Elf"
          ],
          "movies_as_actor": [
              {
                  "title": "The Lord of the Rings: The Fellowship of the Ring",
                  "release_year": "MMI"
              },
              {
                  "title": "The Lord of the Rings: The Two Towers",
                  "release_year": "MMII"
              },
              {
                  "title": "The Lord of the Rings: The Return of the King",
                  "release_year": "MMIII"
              },
              {
                  "title": "Ad Astra",
                  "release_year": "MMXIX"
              }
          ],
          "movies_as_director": [],
          "movies_as_producer": []
      },
      {
          "id": 18,
          "first_name": "Brad",
          "last_name": "Pitt",
          "aliases": [],
          "movies_as_actor": [
              {
                  "title": "Ad Astra",
                  "release_year": "MMXIX"
              },
              {
                  "title": "Fight Club (by David Fincher)",
                  "release_year": "MCMXCIX"
              }
          ],
          "movies_as_director": [],
          "movies_as_producer": [
              {
                  "title": "Ad Astra",
                  "release_year": "MMXIX"
              }
          ]
      }
  ]
    
```

```javascript
// GET Person
GET https://movies-rest-api-marco.herokuapp.com/api/v1/people/18
    
RESPONSE

  {
      "id": 18,
      "first_name": "Brad",
      "last_name": "Pitt",
      "aliases": [],
      "movies_as_actor": [
          {
              "title": "Ad Astra",
              "release_year": "MMXIX"
          },
          {
              "title": "Fight Club (by David Fincher)",
              "release_year": "MCMXCIX"
          }
      ],
      "movies_as_director": [],
      "movies_as_producer": [
          {
              "title": "Ad Astra",
              "release_year": "MMXIX"
          }
      ]
  }
    
```

```javascript
// CREATE Person - Require Authentication
POST https://movies-rest-api-marco.herokuapp.com/api/v1/persons

  {
      "person": {
          "first_name": "Helena",
          "last_name": "Bonham",
          "aliases": ["CBE"],
          "movies_as_actor_ids":	["10"],
          "movies_as_director_ids": [],
          "movies_as_producer_ids": []
      }
  }

RESPONSE

  {
      "id": 22,
      "first_name": "Helena",
      "last_name": "Bonham",
      "aliases": [
          "CBE"
      ],
      "movies_as_actor": [
          {
              "title": "Fight Club (by David Fincher)",
              "release_year": "MCMXCIX"
          }
      ],
      "movies_as_director": [],
      "movies_as_producer": []
  }
    
```

```javascript
// UPDATE Person - Require Authentication
PUT https://movies-rest-api-marco.herokuapp.com/api/v1/people/1

  {
      "person": {
          "first_name": "Helena",
          "last_name": "Bonham Carter",
          "aliases": ["Helen", "CBE"]
      }
  }

RESPONSE

  {
      "id": 22,
      "first_name": "Helena",
      "last_name": "Bonham Carter",
      "aliases": [
          "Helen",
          "CBE"
      ],
      "movies_as_actor": [
          {
              "title": "Fight Club (by David Fincher)",
              "release_year": "MCMXCIX"
          }
      ],
      "movies_as_director": [],
      "movies_as_producer": []
  }
    
```
