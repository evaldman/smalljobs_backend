class AddTimeToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :time, :time
  end
end
