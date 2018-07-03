class Employee < ApplicationRecord
	has_many :meeting_employee, :dependent => :delete_all
	has_many :meeting, :through => :meeting_employee


end
