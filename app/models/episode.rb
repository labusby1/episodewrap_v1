class Episode < ActiveRecord::Base
  belongs_to :season
  has_and_belongs_to_many :characters
end
