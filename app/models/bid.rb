class Bid < ActiveRecord::Base
  belongs_to :user, class_name: "bidder"
  belongs_to :event
end
