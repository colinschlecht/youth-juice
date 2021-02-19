# Youth Juice 
**DOMAIN GOES HERE**
A web based platform built on Ruby on Rails for inspired and/or experiencd mixologists.

## Description
Youth Juice is an online platform for those like-minded drinkers to catalog, store as well as share their passion in mixology. Users will be able to create their personal account in term to start keeping track of their drink recipes in the database. Ingredients stored in the database are gladly provided to streamline the recipe creating process. If ingredient in mind is not in the database yet, the user is able to add the particular ingredient while they're crafting the recipe in an attached form or simple head to the ingredient page to do so. Users are able to bookmark recipe from other users' creation, stored at a dedicated personal recipe page. Encrypted authentication is equipted so only the creator of the recipe is authorized to alter or remove the recipe from database.

## Install
To join the Youth Juice online family, we recommend visiting our domain above. If you want to host a local server in your local machine, ensure PostgreSQL server is running.
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

A user should be able to create a friends list.

2. Drink boards

	* A user should be able to view all user activity as a timeline.

	* A user should be able to view all friend activity.

3. A user should be able to add other user’s drinks from their portfolio to their portfolio.
(Think of having a share button on a drink).

portfolio -- index = drink board?
portfolio -- show page = individual page - either show yours or another user.
user -- show page = that user's "view your profile?" Maybe?

