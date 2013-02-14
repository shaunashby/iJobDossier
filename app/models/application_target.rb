class ApplicationTarget < ActiveRecord::Base
  attr_accessible :address, :company, :contact, :job_application_id, :notes
end
