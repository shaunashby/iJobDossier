class CreateWorkCertificates < ActiveRecord::Migration
  def change
    create_table :work_certificates do |t|
      t.integer :dossier_id
      t.string :position
      t.string :organisation
      t.string :rawdata
      t.string :location

      t.timestamps
    end
  end
end
