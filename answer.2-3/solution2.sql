SELECT users.name as "user's name", users.id as "user's id", clients.name as "client's name"
FROM users
INNER JOIN clients ON client_id=clients.id