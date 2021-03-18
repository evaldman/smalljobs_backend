class CreateAcceptedJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :accepted_jobs do |t|
      t.boolean :completed
      t.boolean :expected_pay
      t.belongs_to :job, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
