class AddTimeToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :start, :time
    add_column :employees, :end, :time
  end
end
