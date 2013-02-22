# == Schema Information
#
# Table name: job_applications
#
#  id                      :integer          not null, primary key
#  job_application_pool_id :integer
#  jobtitle                :string(255)
#  jobref                  :string(255)
#  deadline                :date
#  submission              :date
#  status                  :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class JobApplication < ActiveRecord::Base
  attr_accessible :job_application_pool_id, :jobtitle, :jobref, :deadline, :submission, :status

  has_one :application_target
  has_one :dossier

  belongs_to :job_application_pool

  validates :jobtitle, presence: true
  validates :jobref,   presence: true
  validates :deadline, presence: true
end
