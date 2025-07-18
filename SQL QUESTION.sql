
SELECT * 
FROM contacts 
WHERE first_name LIKE 'A%';

SELECT contacts.id, contact_notes.contact_id 
FROM contacts 
LEFT JOIN contact_notes ON contacts.id = contact_notes.contact_id 
WHERE created_at >= CURRENT_DATE - INTERVAL 7 DAY 
ORDER BY contacts.id;

SELECT contacts.first_name || ' ' || contacts.last_name AS full_name, 
       contacts.email;

SELECT contacts.id, contact_notes.contact_id 
FROM contacts 
LEFT JOIN contact_notes ON contacts.id = contact_notes.contact_id 
WHERE created_at >= CURRENT_DATE - INTERVAL 7 DAY

UNION

SELECT contacts.id, contact_notes.contact_id 
FROM contact_notes 
RIGHT JOIN contacts ON contacts.id = contact_notes.contact_id 
WHERE created_at >= CURRENT_DATE - INTERVAL 7 DAY 
ORDER BY contacts.id;


SELECT contacts.first_name || ' ' || contacts.last_name AS full_name,
       contacts.emails, 
       contact_notes.note_text AS most_recent_note;
