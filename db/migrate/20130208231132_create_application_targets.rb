class CreateApplicationTargets < ActiveRecord::Migration
  def change
    create_table :application_targets do |t|
      t.integer :job_application_id
      t.string :company
      t.string :contact
      t.string :address
      t.string :notes

      t.timestamps
    end
  end
end
