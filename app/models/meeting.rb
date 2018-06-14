class Meeting < ApplicationRecord
	has_and_belongs_to_many :employee

	def employees
		@employees = Employee.find(1)

	return @employees
		
	end
end
