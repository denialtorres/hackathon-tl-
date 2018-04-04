class Identity < ApplicationRecord
    belongs_to :biography
    belongs_to :last_seen
    belongs_to :event
    belongs_to :migration
    belongs_to :perpetrator
end
