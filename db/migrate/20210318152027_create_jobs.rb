class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.integer :length
      t.integer :pay
      t.datetime :date
      t.boolean :accept_status
      t.boolean :completed
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
