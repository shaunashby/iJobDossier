# == Schema Information
#
# Table name: dossiers
#
#  id                 :integer          not null, primary key
#  job_application_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Dossier < ActiveRecord::Base
  belongs_to :job_application
end
