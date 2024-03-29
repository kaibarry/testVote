class Candidate < ActiveRecord::Base
  attr_accessible :name

  has_many :votes, :dependent => :destroy
  has_many :voters, :through => :votes

  validates_presence_of :name

end
