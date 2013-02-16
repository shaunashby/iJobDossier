class CreateDossiers < ActiveRecord::Migration
  def change
    create_table :dossiers do |t|
      t.integer :job_application_id

      t.timestamps
    end
  end
end
