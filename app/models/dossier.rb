# == Schema Information
#
# Table name: dossiers
#
#  id                 :integer          not null, primary key
#  job_application_id :integer
#  notes              :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Dossier < ActiveRecord::Base
  attr_accessible :job_application_id, :notes

  belongs_to :job_application
  has_one :curriculum_vitae
end
