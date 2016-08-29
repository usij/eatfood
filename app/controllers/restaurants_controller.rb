class RestaurantsController < ApplicationController
    before_action :authenticate_user!, only: [:create, :new,:edit, :update, :destroy]
    before_action :is_admin?, only: [:edit, :update, :destroy]
    
    def index
        # visitor_latitude = request.location.latitude
        # visitor_longitude = request.location.longitude
        visitor_latitude = 44.9778
        visitor_longitude = -93.2650
        
        @restaurants = Restaurant.all
        #@restaurant = Restauran.near([visitor_latitude, visitor_longitude],20)
        @italian_restaurants = Restaurant.where(category_id: 1)
        @korean_restaurants = Restaurant.where(category_id: 2)
        @chinese_restaurants = Restaurant.where(category_id: 3)
        @japanese_restaurants = Restaurant.where(category_id: 4)
        @french_restaurants = Restaurant.where(category_id: 5)
        @mexican_restaurants = Restaurant.where(category_id: 6)
        @american_restaurants = Restaurant.where(category_id: 7)
        @indian_restaurants = Restaurant.where(category_id: 8)
        @thai_restaurants = Restaurant.where(category_id: 9)
        @vietnam_restaurants = Restaurant.where(category_id: 10)
        @greek_restaurants = Restaurant.where(category_id: 11)
        @fusion_restaurants = Restaurant.where(category_id: 12)
        # 주변 20마일만 있음@fusion_restaurants = Restaurant.where(category_id: 12).near([visitor_latitude, visitor_longitude],20)
    end
    def new
        @restaurant = Restaurant.new
    end
    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save
           redirect_to @restaurant 
        else
            flash[:danger] = @restaurant.errors.full_messages.to_sentence
            render 'new'
        end
        
    end
    def show
       @restaurant = Restaurant.find(params[:id])
       @reviews = Review.where(restaurant_id: @restaurant)
       if @reviews.blank?
        @avg_rating = 0
       else
        @avg_rating = @reviews.average(:rating).round(2)
       end
    end
    
    def search
        if params[:category].blank?
            @restaurants = Restaurant.all
        else
            @restaurants = Restaurant.search(params)
        end
    end
    
    def edit
       @restaurant = Restaurant.find(params[:id]) 
    end
    
    def update
        @restaurant = Restaurant.find(params[:id]) 
        @restaurant.update(restaurant_params)
        redirect_to @restaurant
    end
    
    def destroy
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
        redirect_to root_path
    end
    
   
    private
        def restaurant_params
            params.require(:restaurant).permit(:name, :description, :category_id, 
                                            :address1, :address2, :city, :state, :zipcode, :phone, :email, :image)
            
        end
        def is_admin?
            if !current_user.try(:admin?)
                flash[:danger] = "You are not authorized to edit or delete."
                redirect_to root_path
            end
        end
end