require 'rspec'
require 'todo'

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new('Wash the dishes')
    test_task.should be_an_instance_of Task
  end
  it "lets you read the description out" do
    test_task = Task.new('Wash the dishes')
    test_task.description.should eq "Wash the dishes"
  end
end

describe List do
  it 'is initialized with a description' do
    test_list = List.new("Chores")
    test_list.should be_an_instance_of List
  end
  it 'adds new tasks to a specified list' do
    test_list = List.new("Chores")
    task_to_add = Task.new("rake")
    test_list.add_task(task_to_add)
    test_list.tasks.should eq [task_to_add]
    test_list.tasks[0].description.should eq "rake"
  end
end
