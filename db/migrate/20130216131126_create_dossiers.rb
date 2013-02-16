class CreateDossiers < ActiveRecord::Migration
  def change
    create_table :dossiers do |t|
      t.integer :job_application_id

      t.timestamps
    end
    add_index :dossiers, :job_application_id, :unique => true
  end
end
