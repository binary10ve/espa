class JobCategory < ActiveRecord::Base
	has_many :jobs, :dependent => :destroy
	
	accepts_nested_attributes_for :jobs, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true

end
