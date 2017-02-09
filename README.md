##To Do's API

In order to continue expanding my familiarity with the Grape API tool, I chose to create a simple  web services where the user is able to create new to-do item's, mark items as complete, retrieve any given user and see just the incomplete tasks for a given users. This was fun! This definetly helped me get more familiarize with the Grape documentation. 


###How
This 4-hour project is currently supported by a Postgres database and it is loaded with one user, John and a list of uncompleted tasks.

* Clone repo

* Install all gems
``` bash
$ bundle install
```
* Create, migrate and seed the database
```bash
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
```

*Make your requests
For all of John's tasks:
```bash
$ curl http://localhost:9393/v1/user/all_items?username=john
```
For all of John's uncomplete tasks:
For all of John's tasks:
```bash
$ curl http://localhost:9393/v1/user/incomplete_items?username=john
```
To create a brand new item:
```bash
$ curl --data "username=john&task_name=cook&due_date=2017-02-08" http://localhost:9393/v1/create_task
```
To mark an item as complete:
```bash
$ curl --data "username=john&task_name=cook&due" http://localhost:9393/v1/update_task
```
Make sure to enter all due dates in the format of YYYY-MM-DD in order to succesfully create and update.


### Dependencies
* Ruby 2.2 or greater
* Sinatra
* Postgres
* ActiveRecord
* Shotgun

###Take Aways
I'm glad I selected this project. It gave me the opportunity to expand my knowledge on webservice set up while considering different types of request to the same objects. 



