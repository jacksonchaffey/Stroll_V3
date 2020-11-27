class HomeController < ApplicationController

    before_action :authenticate_user!, except: [:index, :show]
    
    def index
        
    end

    def profile
        @profile = Profile.new
    end
end
