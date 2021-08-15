# Attempt 1 reflection

## Milestones completed
* create, read, update, delete and ~complete~ a todo item from their list
_note: I did not get to add the complete action_

## Notes
Very slow, some usage of mouse, configuring window position, switching between panes.
Took a long time looking up setup instructions and rails generate documentation. Also made a mistake in generating the scaffold so had to look up documentation for undoing it.
Setting up took a long time, maybe should have anticipated using:
* Rspec
* Capybara
* Guard?
and installed / configured them up front. However, you only really know they are correctly configured once you have a test to run. It's not good enough to delay setting up tests since in a real world scenario we know we want tests ASAP as it speeds up development. This includes making basic tests for future developers to iterate on.

I skipped rails setup with tests, perhaps there is a way to make them do a setup with rspec and create all the basic specs from `rails new` in the rspec way?

## Next time goal
* speed up setup
* get to milestone 3: name their list.
