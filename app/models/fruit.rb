class Fruit < ActiveRecord::Base
  attr_accessible :name

  def squishy?
  	nil
  end

  belongs_to :stair
end
