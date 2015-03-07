class Bid < ActiveRecord::Base
  belongs_to :user, class_name: "Bidder"
  belongs_to :event, class_name: "Customer"
end
