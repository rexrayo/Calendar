class Meeting < ApplicationRecord
	has_many :meeting_employee, :dependent => :delete_all
	has_many :employee, :through => :meeting_employee


	def employees

		@employees = Meeting.find(id).employee
			return @employees
		
	end

end
