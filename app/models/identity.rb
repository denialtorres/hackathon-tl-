class Identity < ApplicationRecord
    scope :by_name, -> (name) { where('first_name LIKE ? OR first_last_name LIKE ?', "%#{name}%", "%#{name}%") }
end
