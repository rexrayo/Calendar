class CreateMeetingEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :meeting_employees do |t|
      t.references :meeting, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
