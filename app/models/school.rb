class School < ApplicationRecord
    belongs_to :district
    has_many :incidents
    def school_name
        "#{name}"
    end
end
