class Project < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 3 }

  has_many :formats, through: :project_format

  @@status_names = ['Submitted', 'Started', 'Proofing', 'Ready']

  def status_name
    @@status_names[self.status]
  end

  def requester
    {
      name: self.contact_name,
      email: self.contact_email,
      phone: self.contact_phone,
      organization: self.organization
    }
  end
end
