

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

