created github repo 'wdi_project1'

<!-- README.md Projects need a readme file in markdown explaining their project. Explain your concept and data model. What problem are you solving?!  -->
<!-- Scope. What are you planning to build? What features will it have? What do you think you can reasonably implement in the time period? -->
I am planning to build an application that allows a user to create a profile upon login to keep track of their discgolf scores at different courses, and different conditions(sun/rain/overcast, temp, wind speed) using the weather channel API. To create a new round, the user must create an account and sign in, or log into their existing account. Next, the user must enter the name of their course, and zip code. The next page will have a table of 18 holes allowing the user to enter their scores for each hole as they play. As this is mostly helpful in a mobile environment, I'd like to design the application to be scaleable to be mobile friendly, so users can input the data via smartphone. In the upper right corner of the header, I will display the current weather conditions (ex. Sunny, Temperature: 74F, Wind Speed: 8 MPH). After completing a game, the date, course, score, and weather conditions will save to the users 'my scores' page. Users can view, or delete their past rounds in the 'myscores' page.

<!-- Object Models. Draw out the model associations for your project. Pen and paper is very easy and you can take a picture to save it, or use software like PowerPoint, Keynote, Gliffy (online), and Omnigraffle ($$). -->
On the backend, I will have USERS, SCORES, and GAMES models. SCORES will be my Join Table between GAMES, and USERS in the database. The User table, will store the username of the user. The GAME table stores the course_name, date, weather(sunny, partly cloudy, etc), wind_speed, and temperature. The score table will store the user_id, and the game_id to connect the two.

![photo1.jpg](thannes30.github.com/wdi_project1/wireframes/photo1.jpg)
![photo1.jpg](thannes30.github.com/wdi_project1/wireframes/photo2.jpg)

![photo1.jpg](wireframes/photo1.jpg)
![photo2.jpg](wireframes/photo2.jpg)

<!-- Milestones. -->
Monday 9am- Routes are complete, and page links are fully functional to maneuver site. API is fully functional, and getting weather information based on users location. Now focus on getting content perfect.

Tuesday 9am- All backend coding complete. Focus next 48 hours on pixel perfect styling.


<!-- Planning board. We will be using Trello for this. It is simple and lightweight. Your planning board needs to show the user stories and project completion status. -->

RESOURCES
http://www.wunderground.com/weather/api/d/docs?d=resources/icon-sets&MR=1
http://www.wunderground.com/weather/api/d/docs?d=data/index&MR=1
http://api.wunderground.com/api/2f1ce0c3fb4069a3/conditions/q/NJ/Mahwah.json
http://www.scoreclip.com/Party-Golf/Golf-Course-Info.Mobile.aspx?Guest=True
http://mobilescorecard.wordpress.com/
http://guides.rubyonrails.org/layouts_and_rendering.html
http://golfersscore.heroku.com/
