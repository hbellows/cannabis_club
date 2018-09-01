class User < ApplicationRecord
  belongs_to :dispensary
  enum role: %i[user, admin]
end
