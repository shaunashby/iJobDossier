class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.integer :dossier_id
      t.string :from
      t.string :organisation
      t.string :rawdata
      t.string :location

      t.timestamps
    end
  end
end
