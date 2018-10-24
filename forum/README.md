# README

## Description of application
This is a simple question/answer forum application that we could use for questions and answers for our class. It uses bootstrap for some minimal styling and modals.<br><br>

Note that for the bootstrap js suport (for modals), you have to add gem 'jquery' to your gemfile and run the bundle installer.<br><br>

In this weeks challenges, you will make changes to this application to complete the implementation and enhance it. 

## Setup
1. Run **bundle install** to install required gems
2. Update the config/database.yml to specify your Postgresql configuration information
3. Run **rails db:setup**
4. Run **rails db:migrate**
5. Start the rails server (**rails s**)
6. Verify you can see the application up and running
7. Verify you can see the forum databases created in your postgresql instance in pgadmin4

## Check it out
The buttons are connected to pages and forms, but there are no models created or populated yet for questions and answers, so all you see is dummy data.

## Challege #1
**Add a questions model to the application**

In this challenge, you will add a question model, populate it with some initial data, and modify the controller and view to display that data
In this challenge, you will perform the necessary steps to add the question and answer models.

1. Use the **resource** generator to generate these models. 

The question model should have 2 fields:
* email: string
* body: text

The answer model should have 2 fields:
* email: string
* body: text

Remember to run **rails db:migrate** after generating these resources.

2.  Use the rails console (**rails c**) to add two questions to the questions table. Use commands in rails console to verify there is now two rows of data in the questions table.

3. In home/index.html.erb, you will see that fake data is shown right now. Before you modify home/index.html.erb to display real questions from the database, you need to modify the home controller to prepare that data. Remember, the job of the view is only to display data that is prepared by the controller.<br><br>
Modify the home controller index method to retrieve the questions currently stored in the database. (HINT: This modification should create a @questions instance variable that will be used by question/index.html.erb to display the real data.)

4. In home/index.html.erb, use the @questions instance variable to show questions from the database on the home page, instead of the fake data currently shown. (HINT: You will use a loop to iterate through the @questions variable, printing the appropriate fields for each question.)

5. There is a cool service we are using here to show the gravatar for an email address. Currently the gravatar URL is hardcoded, but we can change this to get the gravatar for a given email address. The first step, though, is to make our model provide the gravatar for us. <br><br>

Add a method to the Question ActiveRecord class (models/question.rb) called gravatar. In this method, just add a single line to create an MD5 hash of the email address and return a url with that hash. You can use a default if there is no gravatar found for the user to get a random cool pic (I'm using robohash here - but you can look at the other options shown at https://en.gravatar.com/site/implement/images/):<br>
"http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}?d=robohash" <br><br>

Now refer to this newly created gravatar method on the instance of question in home/index.html.erb instead of using the hardcoded URL.

6. Add another question from rails console using a different email address to see your gravatar method working!

## Challenge #2: Some enhancements to the index page and the ask question form
### Part 1 - enhancements to the home#index page
After adding a new question, you'll notice that the most recent question is shown last on our home page, and that isn't ideal. Change the home page to show the most recent question asked first, and add an easy to read date for each question.

1. The appropriate place to order the questions we show is the home controller, because remember the controller is responsible for providing the data in the way we want it for the view. In the index method, you can make a small change to specify the order of the questions in the result set returned by the query on the database. Look up the syntax for the order method on ActiveRecord using google. Notice that only the field on which you want to order the result is required as an argument. However, the default order is ascending, and we want a descending order on the created_at column, so you will have to specify both the field and the order (created_at: :desc).

2. The created_at date is already available in our question record, we just need to display it. Update the home/index.html.erb to display the date just before the question body.
3. By default the date is in UTC format, which isn't very readable. Change the format using a rails helper to show how many minutes, hours, or days ago a question was posted. (HINT: there is a rails helper called time_ago_in_words.)

### Part 2: Make the ask question form work
Right now there is a temporary route specified for /questions and /questions:id. You will change that.
1. Use the **resources** keyword in routes.rb to have rails automatically create the appropriate routes for the **questions** resource. Remove the temporary routes that were created for **post /questions** and **get /questions/:id**.
2. What happens when you try to submit a question now? You should see an error because rails expects that there is a create method in a QuestionsController. 
3. To get rid of this error, define a create method in the QuestionsController created by the rails generator when we generated the questions resource. What happens when you try to submit a question now? There is another error. You should see a missing template error now.
4. Look at how the data is being posted in the log output where you are running your rails server. You should see that rails attempts to post the question, and there are three parameters. The third parameter is a question hash object with an email and body fields. Look at home/index.html.erb and make sure you understand how this is accomplished.
5. To implement the create method in the controller, first define a **private** method called **question_params** (this is an arbitrary name - you could call it something else as long as the purpose of the method is clear). This method will provide some security by ensuring that what is passed through the POST in params is a valid question object, and no additional fields are included (because that is one way our app could be vulnerable to attack). Remember that parameters sent with a request are sent in the params variable. Use the require and permit methods on the params variable to make sure we receive a question param with only 2 fields, email and body (**params.require(:question).permit(:email,:body)**)
6. Now in the create method, create a new question record using the question_params helper method you just defined, and then redirect to the root path.

## Challenge 3
**Implement show question and submit answer functionality**
### Part 1: Implement show question page
Right now if you click on the 'View Answers' button for any question on the home page, you'll get an error. That's because in the last challenge we remove the temporary route for the **get 'home/questions:id'** route and we haven't implemented show in the QuestionsController yet.
1. Try clicking on "View Answers" for any of the questions on the home/index page. You should see an error about action 'show' missing.
2. In the QuestionsController, add a show action (method). We already have some fake content for this under views in home/question.html.erb. Just move that to the questions directory in views and rename it to show.html.erb. See that now the 'View Answers' button works, but all we see is fake data.
3. In home/index.html.erb, change the hardcoded path for the question id on the view answers button. You can use a rails helper question_path, to get the url. You just have to pass the question object we are using to get the other question data as an argument("<%= question_path(q) %>"). Refresh and notice that if you hover over the 'View Answers' button, you can see the question id is being passed in the request. Click and it will take you to a page ... but that page is still fake data.
4. Remember that it is the job of the controller to prepare data for our view, so in the show method of the QuestionsController, define an instance variable, @question, and store the question for the id passed in parameters. (HINT: You can use the find method on Question to find the question using the id passed in params.)
5. Once you define the @question instance variable in the QuestionsController, you can use it in the quetions/show.html.erb to access the data for the given question. Change the questions/show.html.erb to show the actual data for the question selected. Remember to update the gravatar reference on this page also.

### Part 2: Add an answer resource and implement submit an answer form
Currently when you click submit an answer, it doesn't do anything really. It uses a temporary route we defined in home#index that just brings us back to the list of questions. 
1. Remove the temporary route in home#index for **post /answers** in routes.rb. Try posting an answer from a question page. You should see an error that says there is no route defined for post /answers. We don't have an answer resource yet - only a question resource.
2. From the terminal in your app directory (forum), generate an answer resource with rails. The answer resource should have these fields:
   * question_id: integer
   * email: string
   * body: text
3. Verify the routes for answer are created (HINT: You can use rails routes.)
4. Refresh your post to answers page in your app (or try to submit an answer again). Notice it complains that db:migrate is needed. Anytime you add new resources, a new migrate script is create in db/migrate. You must run rails db:migrate to complete configuration of that resource. Do that now. Refresh the post answer page again (or try to submit an answer). See that now we see the same error we saw after adding the question resource and routes. You need to add a create method.
5. Just as you did for the question resource, add and implement a create action in the AnswersController (notice it was created by the generator). Once again create a private method to verify that only what is expected is passed by the POST request, and then redirect to the root_path.
6. But before you test- there is one more thing to take care of. Each answer is associated with some question. You constructed the answer resource with a question_id, but we need to pass that to the create action also, so the answer created is associated with the correct question. The simplest way to do this is to add another hidden field to the new answer form to pass that question id. (HINT: Add this field to your new_answer_model form: <input type="hidden" name="answer[question_id]" value="<%=@question.id %>" />.)
7. You also need to use that question_id when creating the answer, so update your create action in the AnswersController to verify the question_id parameter is used.
8. Since the page for a single question still isn't listing answers from the database, you can't verify from the app yet that our answer was correctly created. You could look in rails console (or pgadmin4) to verify. You should see the new answer created with the correct question_id.

## Challenge 4 Complete implementation of show question page
Our app is mostly functional. We can create questions and submit answers. We can see all of the questions submitted on the home page, ordered by most recent first, with when each was created and the user's gravatar (or a generated one). <br><br>

In this challenge you will complete the implementation of the show question page so that it shows the answers for the question displayed. This will require defining the relationship between question and answer, and updating what you are displaying on the show question page to show real data.

1. In addition to storing the question_id for an answer, you should verify there is a question with that ID in the database. To do this, you will first create the relationship between the question and answer model. One question has many answers. Each answer belongs to one question. Define those relationships in the question and answer model classes.
2. Next in the AnswersController create method, before you create an answer, make sure the question id given is valid. Create a question variable (it does not have to be an instance variable since it's only going to be used in this create method), and store the question associated with the question_id passed in params. (HINT: Use the find method on Question.). Once you have that question, you can redirect to the question page with **redirect_to question** (instead of redirect_to root_path. Test and make sure you are redirected to the question show page after you submit an answer. You are still showing dummy answer data, so you'll have to check rails console to see that your new answer was created. You can also look at the logs (where you ran rails s) to see what rails is doing.
3. Now you will show real answer data in the show answers page. To do this, you'll alter the show.html.erb for questions to loop through the answers for that question. Since there is a relationship between question and answers, you can access the answers directly from the question variable. Add a for loop that loops through @question.answers and prints the information for each answer stored for that question.
4. You can also change the hardcoded gravatar, but you'll have to add the same gravatar method to the Answer model. You can do that and test.
5. What about ordering the answers? Do what you did in the HomeController to order the questions for the answers. You'll do this in the QuestionsController, since that is where we get the data to show on the questions page (in the show action). Prepare an instance variable named @answers that stores all of the answers for this question in the desired order. Then change the show.html.erb for questions to use the @answers instance variable (instead of @question.answers). Make sure everything still works. 
6. Display the time an answer was submitted on the show page for questions. You can copy the helper code from the index.html.erb in home and paste it in the show.html.erb for questions. 
7. Now make it DRY - you can define a module for the gravatar, that you can use from the Question and Answer model. Under the concers directory in models, create a new file called "has_gravatar.rb". Define a module in that file called "HasGravatar", and just paste the gravatar method you defined in the Question and Answer model files. Now in the answer.rb and question.rb in model, you can remove the gravatar method, and replace it with "include HasGravatar". Test that everything still works.