class JobApplication < ActiveRecord::Base
  has_one :application_target
  belongs_to :job_application_pool

  validates :jobtitle, presence: true
  validates :jobref,   presence: true
  validates :deadline, presence: true
end
