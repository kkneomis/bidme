class Event < ActiveRecord::Base
  validates :name, :description, :deadline, presence: true
  
  belongs_to :user

end
