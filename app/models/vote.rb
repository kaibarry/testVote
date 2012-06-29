class Vote < ActiveRecord::Base
  attr_accessible :candidate_id, :voter_id

  belongs_to :voter
  belongs_to :candidate

  validates_presence_of :voter_id, :candidate_id

  #validates_uniqueness_of :voter_id, :candidate_id


end
