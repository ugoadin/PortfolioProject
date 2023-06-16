
/*

DATA EXPLORATION ON MUSIC MARKETING FOR SPOTIFY DATASET

*/
---------KEY PERFORMANCE INDICATORS---------

Select * from SpotifyData

--1. Total Number Music genre
Select count(distinct Genre)  No_of_Music_genre from SpotifyData

--2. Average Popularity
Select AVG(Popularity)  Average_Popularity from SpotifyData

--3. Average Danceability 
Select AVG(Danceability)  Average_Danceability from SpotifyData

--4. Average Energy
Select AVG(Energy)  Average_Energy from SpotifyData

--5. Average Tempo
Select AVG(Tempo)  Average_Tempo from SpotifyData

--6. Average Liveness
Select AVG(Liveness)  Average_Liveness from SpotifyData


-----------------INSIGHTS-----------------

--1. Music genre by Popularity
Select Genre, AVG(Popularity)  Avg_Popularity 
from SpotifyData
Group by Genre
Order by Avg_Popularity desc 


--2. Music genre by Tempo 
Select Genre, AVG(Tempo)  Average_Tempo 
from SpotifyData
Group by Genre
Order by Average_Tempo desc 


--3. Music genre by Danceability
Select Genre, sum(Danceability)  Danceability 
from SpotifyData
Group by Genre
Order by Danceability desc 


--4.  Music genre by Energy
Select Genre, sum(Energy)  Energy 
from SpotifyData
Group by Genre
Order by Energy desc 


--5.  Music genre by Liveness
Select Genre, sum(Liveness)  Liveness
from SpotifyData
Group by Genre
Order by Liveness desc 


--6.  Music genre by Popularity and Liveness
Select Genre, Avg(Popularity)  Avg_Popularity, 
Sum(Liveness)  Liveness
from SpotifyData
Group by Genre
Order by Avg_Popularity desc


--7. Cross Genric collaboration For Music with Rock
Select Genre, Avg(Popularity)  Avg_Popularity,
sum(Liveness)  Liveness
from SpotifyData
Where Genre like '%Rock%'
Group by Genre
Order by Avg_Popularity desc


--8. Cross Genric collaboration For Music with Pop
Select Genre, Avg(Popularity)  Avg_Popularity,
sum(Liveness)  Liveness
from SpotifyData
Where Genre like '%Pop%'
Group by Genre
Order by Avg_Popularity desc


-------VIEW FOR LATER VISUALIZATION ON POWER BI

--1. VIEW for Genre, Popularity, Tempo, Danceability, Energy and Liveness
Create View Music_Genre_Vs_Audio_Features as
Select Genre, Avg(Popularity)  Avg_Popularity,
AVG(Tempo)  Avg_Tempo,
sum(Danceability)  Danceability,
sum(Energy)  Energy,
Sum(Liveness)  Liveness
from SpotifyData
Group by Genre


--2. VIEW for Cross Genric collaboration For Music with Rock
Create View Collaboration_for_Music_with_Rock as 
Select Genre, Avg(Popularity)  Avg_Popularity,
AVG(Tempo)  Avg_Tempo,
sum(Danceability)  Danceability,
sum(Energy)  Energy,
sum(Liveness)  Liveness
from SpotifyData
Where Genre like '%Rock%'
Group by Genre
--Order by Avg_Popularity desc


--3. VIEW for Cross Genric collaboration For Music with Rock
Create View Collaboration_for_Music_with_Pop as
Select Genre, Avg(Popularity)  Avg_Popularity,
AVG(Tempo)  Avg_Tempo,
sum(Danceability)  Danceability,
sum(Energy)  Energy,
sum(Liveness)  Liveness
from SpotifyData
Where Genre like '%Pop%'
Group by Genre
--Order by Avg_Popularity desc


