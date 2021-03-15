# Final-Project

Topic: Hurricane Analysis

The reason for this topic is based loosely on the learnings we did in module 13. We felt there is a sufficient amount of data covering hurricanes.  

Description of Source Data: The data we are using is the National Oceanic and Atmospheric Administration's hurricane trackings since 1980. (ibtracs.since1980.list.v04r00.csv)

Our main question we hope to answer is: What is the probability that a hurricane will make landfall within a 50 mile radius area in the Eastern United States? 

## Team Protocols

* Value and Respect all team members: Give everyone a chance to include their input and actively listen

* Participation is expected by all members on the team: Be active in group discussions, ask questions, and confirm understanding. 

* Meetings: We will meet on Tuesday and Thursday nights during class at 7pm, when possible. If more time is needed, we will discuss as a group when all team members can meet again.

* Channels of Communication: "Group Project" channel in Slack and group text message. Consistenly check and acknowledge communcations posted to channels to ensure all group members have up to date information. 

* All group discussions will end with an "action plan" or key takaways. A recap will be posted to our slack channel as a resource. After an action plan is set in motion, get started right away to ensure other members are not waiting for your part and all work is submitted on time.

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

Next we move in to the Analysis Phase of the project. 

## Analysis Phase

In the analysis phase, we created 4 different visualizations using Tableau. 

The first visual represents storm strikes based on the speed of the storm. 

<img width="1429" alt="Storm Speeds:Strikes" src="https://user-images.githubusercontent.com/71396367/111091013-0086d100-8508-11eb-8f2a-5f819130521d.png">

Our second visualization, looks at how many storms there were as an entirety between 1980 and 2020, and how many of the those in total hit the state of Florida. 

<img width="1431" alt="FL vs Non-FL Strike" src="https://user-images.githubusercontent.com/71396367/111091060-24e2ad80-8508-11eb-98dd-27363f1ee3f8.png">

Taking a look at the third visusalization, this one tells the story of what month during the year strikes are most likely to occur. 

<img width="1430" alt="Majority of Strikes" src="https://user-images.githubusercontent.com/71396367/111091110-4d6aa780-8508-11eb-81d4-d3241e35a438.png">

In the final visual representation, we find the nature of the storm and how it may have impacted Florida given the storm strike. 

<img width="1431" alt="Nature of Storms" src="https://user-images.githubusercontent.com/71396367/111091181-78ed9200-8508-11eb-80a9-c406bb4c9690.png">

### Visuals to Support Data Analysis

Link to Tableau that include visuals above to support our analysis. 

https://public.tableau.com/profile/danielle.duce#!/vizhome/Final_Project_Visuals_16157669818190/StormSpeeds?publish=yes

### Link to Google Slide
https://docs.google.com/presentation/d/1NRwVGG2yReRMv8M2F8JdpbUijwd-IhbOcqOz93g4BC4/edit#slide=id.gc78378ac2d_0_19
