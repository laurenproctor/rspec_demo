# Requires the spec_helper.rb file in the spec folder
require 'spec_helper'

describe Fruit do

	it { should belong_to :stair }

  describe "An apple" do # context in shoulda, Scenario in gherkin
  	before do # setup in shoulda, Given/when in gherkin
  		# we're using an instance variable here because we want it to be accessible elsewhere. If you did variable it would be out of scope
  		@apple = Apple.create(:name => 'Apple')
  	end
  	# now we start defining the behavior. In rspec we give it a series of specification type statements describing what it's going to do.
  	# this is where our test gets run.
  	it "should not be squishy" do # should in shoulda, Then in cucumber/gherkin
  		@apple.squishy?.should == true # shoulda might say assert @apple.squishy?
  		@apple.squishy?.should be_true # exactly the same thing as the line above
  		@apple.squishy?.should eq(true) # again, the same thing, this last one might be best
  	end

  	it "should remember what class it is using single table inheritance (STI)" do
  		apple = Fruit.find(@apple.id)
  		apple.should_not be_nil
  		apple.should_not == nil
  		apple.should_not eq(nil)

  		apple.class.should == Apple
  		apple.class.should eq(Apple)

  		apple.should == @apple
  		apple.should eq(apple)

  		apple.is_a?(Fruit).should be_true
  		apple.class.ancestors.should include Fruit
  	end

  end

  describe "A pear" do
  	before do
  		@pear = Pear.create(:name => 'Pear')
  	end

  	it "should be kinda squishy" do
  		@pear.squishy?.should == false # shoulda might say assert @apple.squishy?
  		@pear.squishy?.should be_false # exactly the same thing as the line above
  		@pear.squishy?.should eq(false)
  	end

  	it "should remember what class it is using STI" do
  		pear = Fruit.find(@pear.id)
  		pear.should_not be_nil
  		pear.should_not == nil
  		pear.should_not eq(nil)

  		pear.class.should == Pear
  		pear.class.should eq(Pear)

  		pear.should == @pear
  		pear.should eq(pear)

  		pear.is_a?(Fruit).should be_true
  		pear.class.ancestors.should include Fruit
  	end

  end

end
