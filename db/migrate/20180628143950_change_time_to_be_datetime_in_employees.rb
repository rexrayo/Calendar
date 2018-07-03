class ChangeTimeToBeDatetimeInEmployees < ActiveRecord::Migration[5.1]
  def change
  	change_column :employees, :start, :datetime
  	change_column :employees, :end, :datetime
  end
end
