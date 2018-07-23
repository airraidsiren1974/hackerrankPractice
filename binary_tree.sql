/*
Write a query to find the node type of Binary Tree ordered by the value of the node. 
Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.

+--------+-------+
| N      |  P    |
+--------+-------+
| 1      |   2   |
| 3      |   2   |
| 6      |   8   |
| 9      |   8   |
| 2      |   5   |
| 8      |   5   |
| 5      |  NULL |
+--------+-------+
Sample output
+--------+-------+
| N      |  Tree |
+--------+-------+
| 1      | Leaf  |
| 2      | Inner |
| 3      | Leaf  |
| 6      | Leaf  |
| 8      | Inner |
| 9      | Leaf  |
| 5      | Root  |
+--------+-------+

Null is a root node and if a node is a parent to more than one child, then Inner, else Leaf.

*/

SELECT N, 
    CASE WHEN P IS NULL THEN 'Root' 
    WHEN(SELECT COUNT(*) FROM BST WHERE P = A.N) > 0 THEN 'Inner'
    ELSE 'Leaf' END
FROM BST A
ORDER BY N;