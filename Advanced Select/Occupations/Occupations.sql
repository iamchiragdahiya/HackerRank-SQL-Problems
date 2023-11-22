-- Create a temporary table for Doctors with row numbers
with doc as (
    select row_number() over() as r, name as Doctor
    from occupations
    where occupation = 'Doctor'
    order by Doctor
),

-- Create a temporary table for Professors with row numbers
pro as (
    select row_number() over() as r, name as Professor
    from occupations
    where occupation = 'Professor'
    order by Professor
),

-- Create a temporary table for Singers with row numbers
sing as (
    select row_number() over() as r, name as Singer
    from occupations
    where occupation = 'Singer'
    order by Singer
),

-- Create a temporary table for Actors with row numbers
act as (
    select row_number() over() as r, name as Actor
    from occupations
    where occupation = 'Actor'
    order by Actor
)

-- Select columns from the temporary tables and perform left joins
select Professor, Doctor, Singer, Actor
from pro
left join doc using(r)
left join sing using(r)
left join act using(r);
