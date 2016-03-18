# Q0: Why is this error being thrown?
Because we haven't created the pokemon model yet
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Seeds.rb generates them through a random generator. Their trainer id is all nil. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It makes a button called Throw a Pokeball. Capture_path calls the capture method, patches it to the right page and passes in the ID of the current pokemon
# Question 3: What would you name your own Pokemon?
Potato
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed it to trainer/trainer_id. Its okay not to have a path because 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It catches all the errors associated with validation and redirects bakc to the same page. 

# Give us feedback on the project and decal below!

I couldn't figure out my bug in the last part of the project. Please don't take off too many points! The Decal curriculum seems really good (paced well and assignments help), but its more work than I thought it would be. I wish I took it in a semester where I had more time to devote to it. 

# Extra credit: Link your Heroku deployed app
