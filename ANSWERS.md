# Q0: Why are these two errors being thrown?
- The first error is being thrown because our data base hadn't been migrated to work with our new project.
- The second error is being thrown because we don't have a Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
- The random Pokemon are appearing due to code in the index.html.erb file. All the pokemon are from the app > images > pokemon folder (they are all .png files, apart from the pokemon-family.jpg file), and all of them can optionally belong to a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
- It creates a medium-sized button with the words "Throw a Pokeball" that gets the id of the pokemon that you're capturing (and then it puts it in the path). This button sends a patch method.

# Question 3: What would you name your own Pokemon?
- Aivant b/c why not

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
- I passed "/trainers/#{current_trainer.id}" into redirect_to. This path needed current_trainer.id and needed to be in double quotes (so that string interpolation works).

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
- It takes in any errors from the pokemon controller and converts them into sentences, then flashes them on the screen for the user to see.

# Give us feedback on the project and decal below!
- Ethan is great & Aivant is great! The project was a good reflection/refresher of things we've learned so far, and used the "heavy lifting" tools that Rails provides. Thanks again!
- Note to self: I need to do decal work consistently so I don't forget all the good stuff I learn from each homework/lecture haha...

# Extra credit: Link your Heroku deployed app
