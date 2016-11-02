# Q0: Why is this error being thrown?
We have yet to generate a Pokemon model

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

Routes.rb directs the homepage to the home_controller, which then creates a list of trainerless_pokemon. @pokemon is then set to a random pokemon from that list and then displayed. All of the possible pokemon are all trainerless.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

When you click on "Throw a Pokeball!", the button leads to capture path that returns the path of capture, which is pokemon#capture.

# Question 3: What would you name your own Pokemon?
asuhdud

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path(id: @pokemon.trainer_id)
Redirected it to the trainer path. It needed a trainer object.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It redirects to the same form and flashes an error in red at the top of the page
It also renders the message method in application.html.erb

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
