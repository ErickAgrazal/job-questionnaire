# Answer 2 and 3

## Question 2:

```
Write a PostresSQL query that takes the data from 2 tables and outputs “user’s name”, “user’s id” and “user’s client name”.  The tables are named “users” and “clients”.  “users” contains the columns id, name, password, username, client_id as columns.  clients contains id, name, address, city, state, zip_code.  Each column of the output should be properly labeled as indicated in the initial request.
```

## Solution 2:

The solution is in the [solution2.sql](./solution2.sql) file.

## Question 3:

```
Now, take your output from question 2. Assume that there are multiple users per client.  Display the “number of users” and “client name” for each client.
```

## Solution 3:

The solution is in the [solution3.sql](./solution3.sql) file.

## Run the compose infrastructure to execute the sqls

```bash
docker-compose up --build
```

## Execute the scripts

```
Go to: http://localhost:8080/
```

The credentials are:
```
System: PostgreSQL
Server: db
Username: user
Password: password
Database: database
```
