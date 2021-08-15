# Attempt 2 reflection

## Milestones completed
* create, read, update, delete and complete a todo item from their list
* delete all items
_note: I did not finish this milestone_

## Notes
Setup was a lot faster, due to more familiarity with where I wanted to go.
Better control of panels but not well practiced, slipped back to mouse every now and again.

My mind was not made up on making the completed_at a boolean or timestamp. I know that data wise, timestamps are more useful. Likewise with deleting, by default we actually delete the data, but maybe a deleted_at timestamp is better. This way it leaves us the option of building a 'view deleted items' function. I wouldn't be proud if a production app turned out to be fake deleting data that the user desperately wanted deleted. Perhaps a middleground is clear language "moved to trash" rather than "deleted" and a link to "clear trash" and an alert saying that this would permanently delete the records.

Guard could have helped with speed, running each spec when a file is saved.
## Next time goal
* practice not using mouse
* speed up running tests
* get to milestone 3: name their list.
