SELECT COUNT(*) as "number of users", clients.name as "client's name"
FROM users
INNER JOIN clients ON client_id=clients.id
GROUP BY clients.id
