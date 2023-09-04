class Tool < ApplicationRecord
    has_many :categories

    validates :name, presence: true
    validates :description, presence: true, length: { minimum: 10 }
    # has_many :project_tools
    # has_many :projects, through: :project_tools
end
