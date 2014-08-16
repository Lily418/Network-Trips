class Trip < ActiveRecord::Base
    has_many :tickets
    has_many :comments
    has_many :trip_images
    has_many :users, through: :tickets
    validates :page_name, uniqueness: { case_sensitive: false }

    def date_to_string
        self.date.mday.ordinalize + " " + self.date.strftime("%B")
    end
end
