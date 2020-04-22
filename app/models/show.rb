class Show < ApplicationRecord
  belongs_to :channel
  has_and_belongs_to_many :users

end
