class DyContent < ApplicationRecord
    validates :description, :content, :pagename, presence: true 
end
