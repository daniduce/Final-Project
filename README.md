# Final-Project

Topic: Hurricane Analysis

The reason for this topic is based loosely on the learnings we did in module 13. We felt there is a sufficient amount of data covering hurricanes.  

Description of Source Data: The data we are using is the National Oceanic and Atmospheric Administration's hurricane trackings since 1980. (ibtracs.since1980.list.v04r00.csv)

Our main question we hope to answer is: What is the probability that a hurricane will make landfall within a 50 mile radius area in the Eastern United States? 


## Exploration Phase

In the exploartion phase we imported tables from Pandas. Gathering the information, we used the North American Storm Data to create the NA_Storms CSV. Once these were in the database, we created the table fl_storms with the following query.  The table contains storms where geohash values from NA_Storms equal the Target geohash values indicating a storm strike.

<img width="473" alt="Screen Shot 2021-03-14 at 8 44 02 PM" src="https://user-images.githubusercontent.com/71396367/111090440-185d5580-8506-11eb-8f9b-d0f6dc7205d4.png">

Then we modified the NA_storms table with the following code to create the "Strike Target" column to indicate storms that hit the target area. 

<img width="473" alt="Screen Shot 2021-03-14 at 8 45 55 PM" src="https://user-images.githubusercontent.com/71396367/111090488-493d8a80-8506-11eb-92c0-91e97cce71c3.png">

Then we set the value of “Strike_Target” to 1 if it exists in “fl_storms” table.  Note, a 1 in the Strike_Target column indicates a storm strike in the target area.

<img width="472" alt="Screen Shot 2021-03-14 at 8 47 12 PM" src="https://user-images.githubusercontent.com/71396367/111090543-768a3880-8506-11eb-89c2-226b3cf25ff1.png">

After, we created another table “origin_end_time” to get the start and end timestamps for storms.

<img width="474" alt="Screen Shot 2021-03-14 at 8 48 15 PM" src="https://user-images.githubusercontent.com/71396367/111090579-9c174200-8506-11eb-9d64-e975cf0b8bb0.png">

Last, we created the final table for “NA_Storms_Summary”. This table will have 1 row for each storm, the ISO_TIME is the origin time of the storm, and the coordinates and geohash values are also from the origin of the storm.

<img width="473" alt="Screen Shot 2021-03-14 at 8 49 32 PM" src="https://user-images.githubusercontent.com/71396367/111090624-c9fc8680-8506-11eb-9d42-cdef8c766d0b.png">

The NA_Storms_Summary table was linked back to Pandas and modified to change the storm strike values from 1, 0 to yes, no.  The summary table was then exported to a csv file to be used for further analysis and visualizations.

Next we move in to the Analysis Phase of the project. 

## Analysis Phase

In the analysis phase, we created 4 different visualizations using Tableau. 

The first visual represents which storms struck florida and with the highest speed knots. 

<img width="922" alt="Screen Shot 2021-03-21 at 3 04 10 PM" src="https://user-images.githubusercontent.com/71396367/111917500-b39a8180-8a56-11eb-8c9c-bd227d726191.png">

For the second visualazation, we look at the end latitude and longitudes of the storms based on a strike or not. 

<img width="921" alt="Screen Shot 2021-03-21 at 3 06 11 PM" src="https://user-images.githubusercontent.com/71396367/111917561-fc523a80-8a56-11eb-8575-ab55c8501220.png">

Our third visualization, looks at how many storms there were as an entirety between 1980 and 2020, and how many of the those in total hit the state of Florida. 

<img width="942" alt="Screen Shot 2021-03-21 at 3 07 44 PM" src="https://user-images.githubusercontent.com/71396367/111917597-34f21400-8a57-11eb-8953-d8aa171310ce.png">

With the fourth visualization, this one tells the story of what month during the year strikes are most likely to occur. 

<img width="943" alt="Screen Shot 2021-03-21 at 3 10 17 PM" src="https://user-images.githubusercontent.com/71396367/111917639-90240680-8a57-11eb-8926-93bc2e4568cd.png">

In the final visual representation, we find the nature of the storm and how it may have impacted Florida given the storm strike. 

<img width="942" alt="Screen Shot 2021-03-21 at 3 10 57 PM" src="https://user-images.githubusercontent.com/71396367/111917660-a7fb8a80-8a57-11eb-9361-e384bfb073c2.png">

### Dashboard and Visuals to Support Data Analysis

<img width="1143" alt="Screen Shot 2021-03-21 at 3 12 12 PM" src="https://user-images.githubusercontent.com/71396367/111917702-d4170b80-8a57-11eb-950b-8443a4feb045.png">

Link to Tableau Dashboard that include visuals above to support our analysis.

https://public.tableau.com/profile/danielle.duce#!/vizhome/Storm_Strike_Dashboard/StormStrikeDashboard?publish=yes

### Machine Learning

We began our machine learning analysis by importing our na_storms_summary.csv file into a Pandas dataframe using the mlenv kernel.  For this analysis we used the logistic regression model from sklearn.  We imported the sklearn label encoder to transform our string values to numeric values.  We used the "Strike_Target" column as the determiner of outcome.  We used train test split from sklearn to divide our data into training and testing groups.  Then we ran the logistic regression classifier for 500 iterations.  The regression analysis produced an accuracy score of 63.6%.  

After the first regression analysis we dropped the "NAME" and "NATURE" columns and our accuracy score improved to 65.9%  We were not able to further improve the accuracy score by dropping additional columns.

#### Steps in developing the model 

Import data set and use pandas info to view nature of the data

![dataInfo](https://user-images.githubusercontent.com/69021009/111926095-d8581e80-8a81-11eb-875f-326c34c6856a.png)

Convert Date field 

![date_convert](https://user-images.githubusercontent.com/69021009/111926280-99769880-8a82-11eb-968d-2be392a5924b.png)


Split our data into train test. This step is necessary for performance. Data is split to train model well

![split_train](https://user-images.githubusercontent.com/69021009/111926005-75ff1e00-8a81-11eb-8354-15a76776069f.png)

Exploratory Data Analysis is also done. This will better helps to understand our data. Very first was to check percentage of strike versus non-strike

![strike](https://user-images.githubusercontent.com/69021009/111926153-12292500-8a82-11eb-842e-c9b6c2a86b67.png)

Analysis of Storm over the Years

![storm](https://user-images.githubusercontent.com/69021009/111926189-31c04d80-8a82-11eb-89f2-1bcb9f53e13b.png)

Correlation Analysis 

![correlation](https://user-images.githubusercontent.com/69021009/111926199-3edd3c80-8a82-11eb-991e-10cbe1e68912.png)

Data Scaling. This is to ensure that our data are converted to same scale. Helps to ensure or avoid any skew information

![scale](https://user-images.githubusercontent.com/69021009/111926174-20774100-8a82-11eb-8b9f-126d9fda8019.png)

Logistic regression model 
We have an accuracy of 70percent 
![model](https://user-images.githubusercontent.com/69021009/111925989-5a941300-8a81-11eb-9fa9-3c212c36e359.png)

Test Accuracy of the result
We will create confusion matrxix to check accuarcy of our classification of storm target. We will use confusion_matrix function of the sklearn library.After importing the function, we will call it using a new variable cm. The function accepts two parameters, mainly the actual values and predicted values

![confusion_matrix](https://user-images.githubusercontent.com/69021009/111926232-66340980-8a82-11eb-9f56-3e12d53c0dce.png)


### Link to Google Slide
https://docs.google.com/presentation/d/1NRwVGG2yReRMv8M2F8JdpbUijwd-IhbOcqOz93g4BC4/edit?usp=sharing

