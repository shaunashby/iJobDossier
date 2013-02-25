# == Schema Information
#
# Table name: curricula_vitae
#
#  id         :integer          not null, primary key
#  dossier_id :integer
#  lang       :string(255)
#  rawdata    :string(255)
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CurriculumVitae < ActiveRecord::Base
  attr_accessible :dossier_id, :lang, :rawdata, :location

  belongs_to :dossier
  validates :location, presence: true
  validates :lang, presence: true
end
