# Youth Juice 
A web based platform built on Ruby on Rails for inspired and/or experiencd mixologists.

https://youth-juice.herokuapp.com/

## Description
Youth Juice is an online platform for like-minded drinkers to catalog, store and share their passion for mixology. Users will be able to store their drink recipes and individual ingredients in the database. When creating a drink, ingredients stored in the database are provided to streamline the recipe creating process, however users can still add an ingredient during recipe creation by simultaneously creating an ingredient. Users are able to bookmark recipes from other users. Encrypted authentication is built in so only the creator of the recipe is authorized to alter or remove the recipe from database, even if added to their list of drinks.

## Install

To participate in sharing your favorite beverages, visit the link below:

https://youth-juice.herokuapp.com/

To contribute, please follow the steps below for installation.


Fork and clone this repo to your local machine and run bundle install. Once completed, initialize the database. From there, start the server and visit the designated local host to enjoy!

If you want to host a local server in your local machine, ensure PostgreSQL server is running.
https://www.postgresql.org/

## Clone the repository
```shell
git clone git@github.com:colinschlecht/youth-juice.git
cd youth-juice
```
## Install dependencies
```shell
bundle && yarn
```
## Initialize the databse
```shell
rails db:crete db:migrate
```
## Start the server
```shell
rails s
```
rails local server will be default at http://localhost:3000/ unless configured otherwise.

## Troubleshoot and Feedback
feel free to connect with the developer
Colin Schlecht GitHub: https://github.com/colinschlecht
Kai Peng Li GitHub: https://github.com/oopanpan

## Coming up in the future updates


## Car

* 1. Hosting. -- check!

2. A user should be able to create a friends list.

3. Drink boards

	* A user should be able to view all user activity as a timeline.

	* A user should be able to view all friend activity.

4. Improvements to share buttons and general site interface.

