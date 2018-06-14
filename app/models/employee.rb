class Employee < ApplicationRecord
	has_and_belongs_to_many :meeting

def meetings
	@meetings = Meeting.find(1)

	return @meetings
end


end
