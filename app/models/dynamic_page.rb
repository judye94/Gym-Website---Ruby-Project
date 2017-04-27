class DynamicPage < ApplicationRecord
    validates :name, :title, :pagetype, presence: true 
end
