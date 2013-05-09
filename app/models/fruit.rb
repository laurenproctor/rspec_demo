class Fruit < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true

  def squishy?
  	nil
  end

  belongs_to :stair

end
