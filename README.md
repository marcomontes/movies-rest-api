JSON Web Token is a great solution for user authentication. It‘s a well documented standard that has many implementation across almost all popular programming languages including Ruby.


curl -i -X POST -H 'Accept: application/json' -H 'Content-Type: application/json' --data '{"api_user": {"email":"admin@admin.com","password":"4DM1N_W3B"}}' http://localhost:3000/api/login.json

HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJkMGQ5MzFjMS05ZGQ1LTRmMDEtOTlkYy1mNTFlOTE0MDBhMTYiLCJzdWIiOiIxIiwic2NwIjoiYXBpX3VzZXIiLCJhdWQiOm51bGwsImlhdCI6MTU4ODI4MjYzMiwiZXhwIjoxNTg4MzY5MDMyfQ.b5IJWBFrndsKCSNctg_4MFyPw8twgYJv9A00jnzVdXw
ETag: W/"ce4cda80d5f4832d75cbf1f780be2196"
Cache-Control: max-age=0, private, must-revalidate
Set-Cookie: _movies_rest_api_session=CHyhbiv0dBU0k2SL8fcHQh1C15kIyMoU5lyWnFsHqW%2FJjRAqQo3ClidjmtCPsLZistIAsemntPw79cof1eae0NOkYp6Vuqosa8BN8C9lHNZuXLOs1f%2BreO3vTJz7S3xjsnTTKcSuPRAgweeelgcbEuHY--ESvhU5VvnQTs%2BoA3--RJgkXtNOYzwpadc6iBwKVw%3D%3D; path=/; HttpOnly
X-Request-Id: 0e62a9aa-b0e7-4275-ac20-995740eae04b
X-Runtime: 0.475208
Transfer-Encoding: chunked

{"success":true,"jwt":"eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJkMGQ5MzFjMS05ZGQ1LTRmMDEtOTlkYy1mNTFlOTE0MDBhMTYiLCJzdWIiOiIxIiwic2NwIjoiYXBpX3VzZXIiLCJhdWQiOm51bGwsImlhdCI6MTU4ODI4MjYzMiwiZXhwIjoxNTg4MzY5MDMyfQ.b5IJWBFrndsKCSNctg_4MFyPw8twgYJv9A00jnzVdXw","response":"Authentication successful"}

