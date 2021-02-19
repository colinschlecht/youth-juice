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

## License
IDK what to write here.






# Styling and Formatting Notes:
* add notes here for preferences on styling and formatting.
* this will become important when applying bootstrap as layouts.



# User-Stories and To-Do List:

## Dev Stories (General to do list for PanPan and ColCol)

DONE Ingredients are created with null values - how can we stop that?
	required name, validation works on individual ingredient creation but NOT nested ingredient. 
	Error: "ActiveRecord::NotNullViolation in RecipesController#create"


DONE * The form to create a recipe should generate a recipe, while also generating a new ingredient object and associates them in the join table. 


## User Stories

1. (may not be possible with ruby limitations) When creating a recipe, a user should be able to “add” a field for ingredients in the user interface, in order to add multiple ingredients to the recipe. 

* DONE  #When editing a recipe, the ingredient list should be persisted for that item, so the user does not have to re-select those ingredients. (This may be dependent on story 1)

* DONE  #When deleting user account, the user session should also be terminated. (Dependent destroy?)

* DONE # A user should be required to log in before viewing the rest of the site.


## Bicycle

1. A user should have a “portfolio” or “profile” that will display the users drinks - as their public profile.

2. A user should be able to view other user “portfolio” or “profiles”
(Think portfolio == public / ‘user show page’ == private)

3. A user show page is private?

4. recipe creation improvements 
	- lists attributes of ingredients with name
5. 


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

