One of my favorite parts of playing discgolf, is that it's FREE! My local course is maintained by the local county parks department. As all things free, there is a small catch, NO SCORECARDS! I wanted to make an app that would allow a player to keep score of his/her rounds, and compare them at a later date. If you are not familiar with discgolf, take a second to check out the wiki page. http://en.wikipedia.org/wiki/Disc_golf




With that being said, I built a Rails application that allows a user to create a profile and keep track of their discgolf scores at different courses, and different conditions(sun/rain/overcast, temp, wind speed) using the Weather Underground API. To create a new round, the user must create an account and sign in, or log into their existing account. Next, the user must enter the name of their course, and zip code. The next page will have a table of 18 holes allowing the user to enter their scores for each hole as they play. As this is mostly helpful in a mobile environment, I added media queries to CSS to make it easier for users to input the scores via smartphone. 

In the upper right corner of the header on the scorecard page, it display the current weather conditions (ex. Sunny, Temperature: 74F, Wind Speed: 8 MPH). After completing a game, the date, course, score, and weather conditions save to the users 'my scores' page. Users can view, or delete their past rounds in the 'myscores' page, in addition to reflecting on the relation between the wind, temperature, and conditions and their score.

On the backend, I have USERS, SCORES, and GAMES models. SCORES is a Join Table between GAMES, and USERS. The User table, stores the username of the user. The GAME table stores the course_name, date, weather(sunny, partly cloudy, etc), wind_speed, and temperature as well as each hole score. The score table will store the user_id, and the game_id to connect the two.




RESOURCES
http://www.wunderground.com/weather/api/d/docs?d=resources/icon-sets&MR=1
http://www.wunderground.com/weather/api/d/docs?d=data/index&MR=1
http://api.wunderground.com/api/2f1ce0c3fb4069a3/conditions/q/NJ/Mahwah.json
http://www.scoreclip.com/Party-Golf/Golf-Course-Info.Mobile.aspx?Guest=True
http://mobilescorecard.wordpress.com/
http://guides.rubyonrails.org/layouts_and_rendering.html
http://golfersscore.heroku.com/
