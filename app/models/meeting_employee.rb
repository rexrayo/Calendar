class MeetingEmployee < ApplicationRecord
  belongs_to :meeting
  belongs_to :employee

end
