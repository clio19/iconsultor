# Rails 4 Sample Consulting App #


The easiest way to install this application is to clone on your computer, and
then push to any PAAS  Service.

##  Considerations ##
These are some special considerations you may need to keep in mind when
running your application .

### Database ###
Your application is configured to use MYsql 5.5 database


```
bundle install
```

## https://iconsultor-htrik.rhcloud.com ##



Use the command above if you want to install  gems 

### Assets ###
Your application is set to precompile the assets every time you push


By adding `disable_asset_compilation` marker, you will disable asset compilation upon application deployment.

### Security ###
Since these quickstarts are shared code, we had to take special atention.


If you do so,  run your application under 'development' mode.
In development mode, your application will:

* Show more detailed errors in browser
* Skip static assets (re)compilation
* Skip web server restart, as the code is reloaded automatically
* Skip `bundle` command if the Gemfile is not modified


## Manual Installation ##

1. git clone

1. cd iconsultor

1. bundle install

1. Add database support to your application

[VER DEMO / SEE DEMO ](https://iconsultor-htrik.rhcloud.com)

    ```
    mysql-5.5 for production , on development,  use sqlite3
    ```

 

1. git clone


1. cd iconsultor


1. bundle install


1. Add database support to your application
mysql-5.5 for production , on development,  use sqlite3


1. rails server


1. That's it! Enjoy your new Rails application!



License
-------

This code is dedicated to the public domain to the maximum extent permitted by applicable law, pursuant to CC0 (http://creativecommons.org/publicdomain/zero/1.0/)

# iconsultor
