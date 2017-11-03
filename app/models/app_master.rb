class AppMaster < ApplicationRecord
  belongs_to :user
  has_many :app_calls
end
