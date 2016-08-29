class PagesController < ApplicationController
    
    def about_us
    end
    def contact_us
    end
    def american
        @american_restaurants = Restaurant.where(category_id: 7)
    end
    def mexican
        @mexican_restaurants = Restaurant.where(category_id: 6)
    end
    def italian
        @mexican_restaurants = Restaurant.where(category_id: 1)
    end
    def korean
        @mexican_restaurants = Restaurant.where(category_id: 2)
    end
    def chinese
        @mexican_restaurants = Restaurant.where(category_id: 3)
    end
    def japanese
        @mexican_restaurants = Restaurant.where(category_id: 4)
    end
    def french
        @mexican_restaurants = Restaurant.where(category_id: 5)
    end
    def indian
        @mexican_restaurants = Restaurant.where(category_id: 8)
    end
    def thai
        @mexican_restaurants = Restaurant.where(category_id: 9)
    end
    def vietnam
        @mexican_restaurants = Restaurant.where(category_id: 10)
    end
    def greek
        @mexican_restaurants = Restaurant.where(category_id: 11)
    end
    def fusion
        @mexican_restaurants = Restaurant.where(category_id: 12)
    end

end