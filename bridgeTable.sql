INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES 
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 1),
(2, 8),
(2, 9),
(2, 3),
(2, 4),
(2, 10),
(2, 11);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientName = 'cloves';

SELECT a.recipeName, b.ingredientName FROM recipe a
INNER JOIN ingredientinrecipe c
ON a.id = c.recipeid
INNER JOIN ingredient b
ON b.id = c.ingredientid;

UPDATE recipe
SET instructions = 
'Mix pumpkin puree, sugar, and spices in a bowl.<br>
Roll out the pastry dough and cut it into small circles.<br>
Place a spoonful of the pumpkin mixture in the center of each circle.<br>
Fold the dough over to create a half-moon shape and crimp the edges with a fork.<br>
Brush the pasties with egg wash.<br>
Bake at 375°F (190°C) for 20-25 minutes or until golden brown.'
WHERE id = 1;

UPDATE recipe
SET instructions = 
'Mix pumpkin puree, brown sugar, and spices in a bowl.<br>
Spoon the mixture into mini tart shells.<br>
Bake at 350°F (175°C) for 15-20 minutes or until set.<br>
Let cool and garnish with whipped cream.'
WHERE id = 2;

UPDATE recipe
SET instructions = 
'Sauté the onion and garlic in a pot until soft.<br>
Add the pumpkin puree and vegetable broth, and simmer for 20 minutes.<br>
Blend the soup until smooth, then return it to the pot.<br>
Stir in the heavy cream and season with salt and pepper.<br>
Heat through and serve.'
WHERE id = 3;