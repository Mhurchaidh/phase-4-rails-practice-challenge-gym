class Membership < ApplicationRecord
    validates :client_id, uniqueness: {scope: :gym}
    validates :charge, presence: true

    belongs_to :client
    belongs_to :gym
end
