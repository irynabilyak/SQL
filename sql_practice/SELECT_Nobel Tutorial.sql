--1. Nobel prizes for 1950
SELECT yr
      , subject
      , winner
FROM nobel
WHERE yr = 1950;

--2. Show who won the 1962 prize for literature.
SELECT winner
FROM nobel
 WHERE yr = 1962
   AND subject = 'literature'
