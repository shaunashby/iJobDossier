class JobApplication < ActiveRecord::Base
  belongs_to :job_application_pool
  attr_accessible :deadline, :job_application_pool_id, :jobref, :jobtitle
end
