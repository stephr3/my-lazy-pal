#  MyLazyPal
## *By Stephanie Gurung & Sam Park*

MyLazyPal is the antithesis of calorie counting apps. Instead of logging exercise and healthy eating, why not count your hours spent binge watching? Users can create an account, add TV shows and movies, log binge watching time, and sort their shows by category, named, and most binged on.

## Technologies Used

* **Application**: *Ruby on Rails 5, BCrypt*<br>
* **Testing**: *Rspec, Capybara, Simplecov, FactoryGirl, PhantomJS, Poltergeist*<br>
* **Database**: *Postgres, ActiveRecord*

Installation
------------

Install *MyLazyPal* by cloning the repository.  
```
$ git clone https://github.com/stephr3/my-lazy-pal
```

Check to make sure ruby and rails are installed on your machine.  
```
$ ruby -v
$ rails -v
```
If they are not installed, please follow instructions [here](http://guides.rubyonrails.org/getting_started.html#installing-rails) to install ruby on rails.

Install required gems:
```
$ bundle install
```

Run Postgres:
```
$ postgres
```

Navigate to project file and migrate database:
```
$ rake db: create
$ rake db: migrate
```

Start the Rails webserver:
```
$ rails server
```

Navigate to `localhost:3000` in your browser of choice.

License
-------
_This software is licensed under the MIT license._<br>
Copyright (c) 2016 **Stephanie Gurung & Sam Park**
