class CreateCurriculaVitae < ActiveRecord::Migration
  def change
    create_table :curricula_vitae do |t|
      t.integer :dossier_id
      t.string :lang
      t.string :rawdata
      t.string :location

      t.timestamps
    end
  end
end
