class ReadCycle < ApplicationRecord
    has_one :book, through :user
end
