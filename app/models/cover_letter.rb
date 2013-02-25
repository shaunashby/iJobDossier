# == Schema Information
#
# Table name: cover_letters
#
#  id         :integer          not null, primary key
#  dossier_id :integer
#  lang       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CoverLetter < ActiveRecord::Base
  attr_accessible :dossier_id, :lang
  
  belongs_to :dossier
  validates :lang, presence: true
end
