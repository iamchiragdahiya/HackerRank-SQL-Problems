-- Select the node value (N) and categorize each node as 'Root', 'Inner', or 'Leaf'
select
    N,
    case
        -- If the parent node (P) is null, the current node is a 'Root'
        when P is null then 'Root'
        -- If the current node's value (N) is found in the list of parent nodes, it is an 'Inner'
        when N in (select P from BST) then 'Inner'
        -- Otherwise, the current node is a 'Leaf'
        else 'Leaf'
    end as NodeCategory
-- Select from the Binary Search Tree table (BST)
from BST
-- Order the result set by the node value (N)
order by N;
