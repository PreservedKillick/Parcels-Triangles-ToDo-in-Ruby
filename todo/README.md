To Do - Ruby
===================

March 10, 2014

Epicodus: Week4, Day1 (part 3)

First day with Ruby's object model

*******************
Lesson:

Follow along the example of creating a To Do list program.

Extend it so that a user can mark a task as done and have it removed from their list.

Allow users to have multiple lists. You should have two models now: Task and List; each should go in it's own file. List should have an instance variable called tasks whose value is an array containing all of the tasks in that list. You'll need to make a method to add a task to a list that takes a task as an argument. For example:

      new_list = List.new("Chores")
      task_to_add = Task.new("Scrub the zebra")
      new_list.add_task(task_to_add)
      new_list.tasks # should return [task_to_add]

