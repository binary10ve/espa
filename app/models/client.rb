class Client < ActiveRecord::Base
	has_many :services
scope :search, ->(query) { where("phone1 like ? OR phone2 like?", "%#{query}%","%#{query}%") }
end
