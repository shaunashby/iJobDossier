class AddEmailToApplicationTarget < ActiveRecord::Migration
  def change
    add_column :application_targets, :email, :string
  end
end
