
== GETTING STARTED

  == Clone the project from Github
    
    git clone git@github.com:siyelo/rubyfuza.git
    
  == Install gems
    
    bundle install
    
    Note: if you need to manually install Staticmatic just run: gem install staticmatic
    


== START THE SERVER

  == You need to be in the root folder and run:
    
    staticmatic preview .

  == On ruby 1.9:

    LANG=UTF-8 staticmatic preview .
    
  == Troubleshooting
    
    If you get error with Compass, make sure you're using v.0.11.7 (you may need to remove newer versions of the gem, as there are known issues with Staticmatic and the new versions of Compass)



== BUILD & DEPLOY
    
  == The site needs to be built before deployment. You need to be in the root folder and run:
    
    staticmatic build .
    
    git push heroku master
    
    Note: Deployment is configured for Heroku. For deployment on other server some HTML hrefs might need to be manually edited in the SITE folder (CSS & images paths), or change the config.
    