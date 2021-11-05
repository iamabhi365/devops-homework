# devops-homework
Welcome, weary traveler! You have arrived at our homework for applicants of our DevOps Engineer position. Here are the instructions you should follow. Good luck, and may the odds be ever in your favour!

## the app itself
What you can find here is a general spring boot application, nothing too fancy. Here's a little documentation to get you started.

config files:
1. application.properties (Spring config)
2. lo4j2-weather.yml (logging config)

Important note: don't be afraid to edit the said two config files. On the contrary, that's part of the question. 

endpoints:
1. a single "/" endpoint calling a weather API

## the exercise itself
What we would like to ask of you is the following:

1. Fork this repository.
2. Build a pipeline in GitHub Actions that is triggered whenever there is a push or a pull request to the main branch, with the following steps:
    1. Unit tests ran
    2. docker image built
    3. docker image is pushed to an artifact repository
    4. ABSOLUTELY OPTIONAL - somewhere in between there are scans running for any static code or security analyser
3. The application is deployed to any cloud provider (100% your choice). Calling the "/" endpoint should show the weather conditions of Miskolc!
    1. The catch: place a shell script in the container that is ran every hour to check whether any env var you put in the container is set; if it's not, it should log it to stderr. (The name and value of the env var is totally up to you!)
    2. AGAIN, OPTIONAL - even if the application is running, there might be an error message in the logs after calling the endpoint ;) Check it out!

Please send us the URL for **the forked repository** and the **URL for the webapplication**.
Thank you!
