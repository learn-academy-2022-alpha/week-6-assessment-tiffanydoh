# ASSESSMENT 6: Interview Practice Questions
Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. As a developer, I am creating a Rails application with a model called Cohort that has_many students, but OOPS! I forgot to add the foreign key. How can I fix this mistake? What is the name of the foreign key? Would the foreign key be on the Cohort model or the Student model?

  Your answer: The Student model is the foreign key. To add the foreign key, we would just do the rails command rails generate model following the name of the table with the column names and the datatypes it takes as an argument. To associate both models together, the foreign key takes belongs_to Cohort (Student model side)        has_many students (Cohort model side).

  Researched answer: The foreign key always goes on the belongs_to side. In this case, the foreign key is going to be Student model.The Student model has already been created, but since the foreign key has not been created, it takes the same approach as the Student model. Use the command rails generate model, and after use the command rails db:migrate. This will give us another file in the app/model, another migration, and updates the schema. Next create the assocation between the two models by going into each of the model classess file and for Cohort add has_many Students, which in the Student add belongs_to Cohort. 



2. Which RESTful routes must always be passed params? Why?

  Your answer: Show, Create, Update, Destroy. Show, Update, and Destroy are being passed an id param that will allow the routes to be more dynamic. It uses the primary keys of the data to either show the data, update the data, or destroy the data based on the primary key in the url. Create will take on private params where it permits only the model being used and the specifics value for name column and values for their datatypes. 

  Researched answer: Show, Create, Edit, Update, and Destroy will be passed params. Show, Update, Edit, and Destroy will take params[:id] where it will allow the url routes to be dynamic. By passing in an id, it is taking the primary key of the data and passing it to the view. Where create will take on a private strong param, used to increase the security of the data sent through from creating. Strong params specify in the controller which parameters are used and accepted. 



3. Name three rails generator commands. What is created by each?

  Your answer: The 3 generator commands are rails generate controller, rails generate resource, and rails generate model. Rails generate model will create the name of each columnm and the datatype that the columns will take as an argument. Rails generate resource will create the migration and model, it creates a controller, and it will automatically create the routes. Rails generate controller will create a controller ruby file in apps, the views folder, helpers, and any stylesheets. 

  Researched answer: The 3 generator commands are rails generate controller, rails generate resource, and rails generate model. When rails generate controller is used, it created a controller file, a functional test file, a helper for the view, along with a view sheet, and stylesheet file. When rails generate model is used, it creates a new table for the database where it shows the column name and the datatype of that column. The rails generate model also create the migration file and the model file. When rails generate resource is used, it will create the migration file, automatically create the routes, it will create the controller file, and the asset pipeline files. 



4. Consider the Rails routes below. What is the name of the controller method that would be called by each route? What action would each of the controller methods perform?

action: "GET"    location: /students   

Index - displays all students       

action: "POST"   location: /students 

Create - creates one student

action: "GET"    location: /students/new

New - shows a form 

action: "GET"    location: /students/2  

Show - displays one student based on the primary key in the url, this will be id: 2

action: "GET"    location: /students/2/edit    

Edit - shows a form that displays the edit form based on ID in the url, the id is 2.

action: "PATCH"  location: /students/2      

Update - modifies an existing student based on the ID in the url, which is 2. 

action: "DELETE" location: /students/2      

Destroy - Deletes one student based on the ID in the URL, which is 2. 


5. As a developer, you are making an application to manage your to do list. Create 10 user stories that will help you get your application started. Read more about [user stories](https://www.atlassian.com/agile/project-management/user-stories).

Story 1: As a developer, I can create a List model in the database. A list will have the following information: name, description, date that it is due, and whether the task is complete or incomplete.
Story 2: As a user, I can see all the tasks in the database.
    - Make a few tasks in rails console. 
Story 3: As a user, I can update a task in the database. 
Story 4, As a user, I can see a form to create a new task.
Story 5: As a user, I can create a task in the database.
Story 6: As a user, I can click a button that will submit my new task to the database. 
Story 7: As a user, when I submit a task, I am redirected to the home page. 
Story 8: As a user, I can destroy a task in the database and there will be a button for me to delete the dask and it sends to database. 
Story 9: As a user, I can see all the task listed on the home page of the application. 
Story 10: As a user, I can click on the name of the task and be routed to a page where I can see the name, description, the due date, and whether it's completed/incompleted. 
Story 11: As a user, I can navigate from each page back to the home page of the application.
 
