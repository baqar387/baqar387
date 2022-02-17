# This is my first data analytics project, sorry if everything is a little bit messy! 
# The data for this project came from this link: https://divvy-tripdata.s3.amazonaws.com/index.html
# The question I was given was "How do annual members and casual riders differ?" 
# Here is the link to my presentation: https://docs.google.com/presentation/d/1WmVsBl_962TtffSb6Of-M_xlVgu3Lxw22DHXthq6LqA/edit?usp=sharing 

# First, I downloaded all of the 2021 data from each month as excel files
# Note that I did my cleaning in excel, not in SQL. I then uploaded these cleaned excel files into SQL
# The link to my cleaning process can be found here https://docs.google.com/document/d/1F0XVmMvT3hODoUDqX03FsfNEILVNqyvORMhV97ACqd4/edit?usp=sharing

# In SQL, I created a dataset called cyclistic_2021_total_data
# I then created tables for each month of the year

# Step 1: Use a subquery  to count the number of rides per month and per day of the week from the respective month and which type of member is riding  

SELECT 
    COUNT (jan2021_data.started_at) AS january_total_rides,
    (
        SELECT 
            COUNT(jan2021_data.started_at) AS Sunday_total_rides

        FROM 
            cyclistic_2021_total_data.jan2021_data

        WHERE 
            day_of_week = 1 AND
            member_casual = 'casual'
    )
       
FROM 
    cyclistic_2021_total_data.jan2021_data
    
    
SELECT 
    COUNT (jan2021_data.started_at) AS january_total_rides,
    (
        SELECT 
            COUNT(jan2021_data.started_at) AS Monday_total_rides

        FROM 
            cyclistic_2021_total_data.jan2021_data

        WHERE 
            day_of_week = 2 AND
            member_casual = 'casual'
    )
       
FROM 
    cyclistic_2021_total_data.jan2021_data
    
    
SELECT 
    COUNT (jan2021_data.started_at) AS january_total_rides,
    (
        SELECT 
            COUNT(jan2021_data.started_at) AS Tuesday_total_rides

        FROM 
            cyclistic_2021_total_data.jan2021_data

        WHERE 
            day_of_week = 3 AND
            member_casual = 'casual'
    )
       
FROM 
    cyclistic_2021_total_data.jan2021_data
    
    
SELECT 
    COUNT (jan2021_data.started_at) AS january_total_rides,
    (
        SELECT 
            COUNT(jan2021_data.started_at) AS Wednesday_total_rides

        FROM 
            cyclistic_2021_total_data.jan2021_data

        WHERE 
            day_of_week = 4 AND
            member_casual = 'casual'
    )
       
FROM 
    cyclistic_2021_total_data.jan2021_data
    
    
SELECT 
    COUNT (jan2021_data.started_at) AS january_total_rides,
    (
        SELECT 
            COUNT(jan2021_data.started_at) AS Thursday_total_rides

        FROM 
            cyclistic_2021_total_data.jan2021_data

        WHERE 
            day_of_week = 5 AND
            member_casual = 'casual'
    )
       
FROM 
    cyclistic_2021_total_data.jan2021_data
    
    
SELECT 
    COUNT (jan2021_data.started_at) AS january_total_rides,
    (
        SELECT 
            COUNT(jan2021_data.started_at) AS Friday_total_rides

        FROM 
            cyclistic_2021_total_data.jan2021_data

        WHERE 
            day_of_week = 6 AND
            member_casual = 'casual'
    )
       
FROM 
    cyclistic_2021_total_data.jan2021_data
    
    
SELECT 
    COUNT (jan2021_data.started_at) AS january_total_rides,
    (
        SELECT 
            COUNT(jan2021_data.started_at) AS Saturday_total_rides

        FROM 
            cyclistic_2021_total_data.jan2021_data

        WHERE 
            day_of_week = 7 AND
            member_casual = 'casual'
    )
       
FROM 
    cyclistic_2021_total_data.jan2021_data
    
# Repeat this process for each month of the year to achieve a full count for both monthly and daily rides. Change january_total_rides to whichever month you're working with. Also remember to change member_casual type from 'casual' to 'member' to find annual member results

# Step 2: Find the average ride times for casual riders for each month of the year and each day of the week
# Note that I had to change the input type from STRING to INT64 for this to run

SELECT 
  AVG(SAFE_CAST(jan2021_data.ride_length AS INT64))
FROM 
  cyclistic_2021_total_data.jan2021_data
WHERE 
  jan2021_data.member_casual = 'casual' AND
  day_of_week = 1
  
SELECT 
  AVG(SAFE_CAST(feb2021_data.ride_length AS INT64))
FROM 
  cyclistic_2021_total_data.feb2021_data
WHERE 
  feb2021_data.member_casual = 'casual' AND
  day_of_week = 1
  
SELECT 
  AVG(SAFE_CAST(march2021_data.ride_length AS INT64))
FROM 
  cyclistic_2021_total_data.march2021_data
WHERE 
  march2021_data.member_casual = 'casual' AND
  day_of_week = 1

SELECT 
  AVG(SAFE_CAST(april2021_data.ride_length AS INT64))
FROM 
  cyclistic_2021_total_data.april2021_data
WHERE 
  april2021_data.member_casual = 'casual' AND
  day_of_week = 1
  
 
SELECT 
  AVG(SAFE_CAST(june2021_data.ride_length AS INT64))
FROM 
  cyclistic_2021_total_data.june2021_data
WHERE 
  june2021_data.member_casual = 'casual' AND
  day_of_week = 1
  
  
SELECT 
  AVG(SAFE_CAST(july2021_data.ride_length AS INT64))
FROM 
  cyclistic_2021_total_data.july2021_data
WHERE 
  july2021_data.member_casual = 'casual' AND
  day_of_week = 1
  
  
SELECT 
  AVG(SAFE_CAST(aug2021_data.ride_length AS INT64))
FROM 
  cyclistic_2021_total_data.aug2021_data
WHERE 
  aug2021_data.member_casual = 'casual' AND
  day_of_week = 1
  
  
SELECT 
  AVG(SAFE_CAST(sep2021_data.ride_length AS INT64))
FROM 
  cyclistic_2021_total_data.sep2021_data
WHERE 
  sep2021_data.member_casual = 'casual' AND
  day_of_week = 1
  
  
SELECT 
  AVG(SAFE_CAST(oct2021_data.ride_length AS INT64))
FROM 
  cyclistic_2021_total_data.oct2021_data
WHERE 
  oct2021_data.member_casual = 'casual' AND
  day_of_week = 1
  
  
SELECT 
  AVG(SAFE_CAST(nov2021_data.ride_length AS INT64))
FROM 
  cyclistic_2021_total_data.nov2021_data
WHERE 
  nov2021_data.member_casual = 'casual' AND
  day_of_week = 1
  
  
SELECT 
  AVG(SAFE_CAST(dec2021_data.ride_length AS INT64))
FROM 
  cyclistic_2021_total_data.dec2021_data
WHERE 
  dec2021_data.member_casual = 'casual' AND
  day_of_week = 1

# Repeat this same process, but change 'casual' in the second last line of each query statement to 'member' to get annual member average ride times. Also remember to change day_of_week column to respective day you're working with
# Note that I tried to use JOIN statements to help me do all this in one query, but SQL was unable to handle all the data I gave it. The excel sheets were too large, I guess

# Step 3: Find shortest ride times for casuals and annual members 

SELECT 
    MIN(ride_length)

FROM 
    cyclistic_2021_total_data.jan2021_data 

WHERE 
    member_casual = 'member' 


SELECT 
    MIN(ride_length)

FROM 
    cyclistic_2021_total_data.jan2021_data 

WHERE 
    member_casual = 'casual'
    
# Repeat this process for every month 

# Step 4: Find the longest ride times for casuals and annual members

SELECT 
    MAX(ride_length)

FROM 
    cyclistic_2021_total_data.jan2021_data 

WHERE 
    member_casual = 'member'
    

SELECT 
    MAX(ride_length)

FROM 
    cyclistic_2021_total_data.jan2021_data 

WHERE 
    member_casual = 'casual'

# My visualizations were done in Excel based on the data I compiled in SQL 










