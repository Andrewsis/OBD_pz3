SELECT
LENGTH('Я студент Харківського національного університету радіоелектроніки') -
LENGTH(REPLACE('Я студент Харківського національного університету радіоелектроніки', 'і', '')) AS i_quantity
FROM dual;
