# == Schema Information
#
# Table name: references
#
#  id           :integer          not null, primary key
#  dossier_id   :integer
#  from         :string(255)
#  organisation :string(255)
#  rawdata      :string(255)
#  location     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Reference < ActiveRecord::Base
  attr_accessible :dossier_id, :from, :organisation, :rawdata, :location

  belongs_to :dossier
  validates :from, presence: true
  validates :organisation, presence: true
  validates :location, presence: true
end
