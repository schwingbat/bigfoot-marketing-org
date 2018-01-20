class Project < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }

  has_many :formats, through: :project_format
end
