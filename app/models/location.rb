class Location < ActiveRecord::Base
  attr_accessible :city, :country, :name, :region, :user_id
end
