require "action_view"

class Cat < ApplicationRecord
    
    include ActionView::Helpers::DateHelper

    COLORS = ['Gray', 'Black', 'Orange', 'White', 'Brown', 'Yellow', 'Rainbow']
    validates :color, inclusion: {in: COLORS}
    validates :sex, inclusion: {in: ["M","F"]}
    validates :name, :sex, :color, :age, :description, presence: true
    
    def age
        time_ago_in_words(birth_date)
    end
end
