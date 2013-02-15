class ApplicationTarget < ActiveRecord::Base
  belongs_to :job_application

  validates :company, :presence => true
  validates :contact, :presence => true
  validates :address, :presence => true
end
