# LIVEASY
Moving to a new city or an unfamiliar city can be very frustrated. Even with clear critera of what they are looking for, it can still be very time-consuming and sometimes people don't even know where to start with. And this is actually a headache for a lot of people. More than 40 million Americans move at least once a year, which occpies over 14 \% of the US population. The process of finding the data is very tedious and sometimes it can be very hard to understand the raw data without proper visualization even when they find it. They also have to make trade-off between different neighborhoods, just like manually solving an optimization problem by hand. We aim to use data science to solve this for them by aggregating the information across resources and build intelligent optimization models to recommend the best places to live to users.

## Authors
This app was created by [Andrea Qiu(zq64)](https://github.com/ziyuqiu), [Wei Duan(wd255)](https://github.com/wd1025) and [Daniel Nissani(dn298)](https://github.com/dni138)

## Usage
You can use our app by simply click on this link: https://ct-liveasy.herokuapp.com/ 
If it doesn't work well, you can follow the instructions and use the local version.

## Instruction

1. `cd` to the folder "where_to_live" and run `bash run.sh` in the terminal. It should be up and running on localhost:5000
2. `cd` to the folder "LIVEASY" and run `rails server` in the terminal. It should be up and running on localhost:3000
3. Open the browser and go to []: http://localhost:3000/
4. Now enter your preferences and get your recommended neighborhoods!


### Front End
We used Ruby on Rails to write the front end and send HTTP requests to the hosted optimizer. Essentially it is formed by two parts: a form that allow users to enter their preferences on the left and a map on the right. After the user submit his/her preferences, the recommended neighborhoods will be highlighted by circles in different colors, where the brighter the color is, the higher the recommendation score is. the user will also see a list of recommended neigherhoods in text on the left span.


### Back End with Optimizer
The backend will take a POST request from frontend, containing company address, means of transportation, safety concern, restaurants, gyms, laundromat, pet friendliness, healthcare, and school information. The request data is converted from string to numeric and passed to optimizer. After the optimizer gives a score of each neighborhood, the backend will visualize the scores with circles of different brightness on the map and send the map back to frontend to show recommendation to user.


### Data Collection, Cleaning and Visualization
Please check out the ipython notebook file named as "data_cleaning_and_visualization.ipynb" for further details.