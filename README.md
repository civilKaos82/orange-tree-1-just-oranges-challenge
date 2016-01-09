# Model an Orange Tree

## Summary
Fran the Farmer is interested in building a model of her orange tree farm.  As a proof-of-concept, she's hoping to model one orange tree and its yearly production over its lifetime.  Fran began working on the program herself, but the success of her farm has left her little time for development.  We've been hired to complete the application for her.

In this challenge we'll be designing a custom Ruby class:  `OrangeTree`.  We'll design its interface and all of its behaviors to specifications provided by Fran.  Once the model is complete, we'll create a script that will model a tree's production.


## Releases
### Pre-release:  Review Provided Code
As mentioned in the *Summary*, Fran has already started to develop this application.  She's created a complete and tested `Orange` class, which we'll make use of—our orange tree will grow oranges afterall.  Fran has only begun to dabble with creating the `OrangeTree` class.  She's laid out a few methods and written some comments on what they should do; she's also provided some skeleton code for testing the orange tree.  And, finally, she's written some of the script that will run (`runner.rb`) when we want to see a tree's production over its lifetime.  Review the code to get the gist of what Fran was planning on doing.  


### Release 0: Model an Orange Tree
Here are some details Fran has provided for how she would like this early orange tree model to behave.  Remember, this is an early proof-of-concept application, so we won't worry about modeling things like how the temperature affects production.  We're just building a basic model.

Each of Fran's details should be translated into tests, so that we can verify our model conforms to them.  In parentheses, Fran has provided the method she intended to match these details.  Our class may very well include more methods than these, but these will form our class's public interface.

- A tree should have an age, which we should be able to check (`#age`).
- A tree should have a height, which we should be able to check (`#height`).
- Each growing season (`#pass_growing_season`) ...
  - Any unharvested oranges from the previous season should drop.
  - A tree should age one year.
  - A tree should grow taller until it reaches its maximum height, say 25 feet.
  - A tree should bear fruit if it is at least six years old.
- A tree should die at age 100, and we should be able to check if it's dead (`#dead?`).
- We should be able to check if a tree has any oranges (`#any_oranges?`).
- We should be able to pick an orange off a tree (`#pick_an_orange`), or raise an error if we try to pick an orange when the tree has none.


*Note:*  In the tests, don't use methods like `#instance_variable_get` to "peek inside the objects".  Write tests that assert correctness using only the object's public methods.  Ask for help, if stuck.


#### Does the script run?

Now that you've implemented your code and created tests for it, let's try and run it. Fill out `runner.rb` to calculate `avg_diameter`, then run the file to see your classes in action.

Does the script at the top of the challenge run and output what you'd expect?  (Hint: you have to be clear about your expectations before you answer that question.)

If not, what are the errors or unexpected behaviors?  Do you understand them? Fix your code and write tests that would have caught your bug(s). You might need to update existing tests if you find you were asserting the wrong thing, or in the wrong way.

##Resources

* Video: [Variable Scopes in Ruby](http://www.youtube.com/watch?v=iLxKNUFHAnY)
* StackOverflow: [Why use Ruby's attr_accessor, attr_reader, and attr_writer?](http://stackoverflow.com/questions/5046831/why-use-rubys-attr-accessor-attr-reader-and-attr-writer)
* StackOverflow: [What is attr_accessor in Ruby?](http://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby)
* https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/expect-change
