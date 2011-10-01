require 'spec_helper'

describe Todo do
  it "accepts a string as a todo" do
  	@todo = FactoryGirl.create(:todo)
  	@todo.should_not be_nil
  end

  it "does not accept nothing as a todo" do
  	@todo = FactoryGirl.build(:todo, :body => "")
  	@todo.should_not be_valid
  end

  it "does not accept deadlines in the past" do
  	@todo = FactoryGirl.build(:todo, :deadline => 2.days.ago)
  	@todo.should_not be_valid
  end

  it "should start as not finished" do
  	@todo = FactoryGirl.create(:todo)
  	@todo.done.should_not be_nil
  	@todo.done.should == false
  end


end
