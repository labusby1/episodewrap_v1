class Season < ActiveRecord::Base
  belongs_to :tvshow
  has_many :episodes
end