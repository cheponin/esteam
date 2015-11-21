class UsersController < ApplicationController
    
    def new
        @user = User.new 
    end
    
    def create
        @user = User.new(user_params)
        respond_to do |format|
            if @user.save
                format.html { redirect_to '/groups', notice: 'User was successfully created.' }
            else
                redirect_to '/home', notice: 'An error occured.'
            end
        end
    end
    
    def update
        respond_to do |format|
            if @user.update(post_params)
                @user.firstname = current_user.firstname
                @post.save
                format.html { redirect_to '/groups', notice: 'User was successfully updated.' }
            else
                redirect_to '/home', notice: 'An error occured.'
            end
        end 
    end
    
    private
    def post_params
        params.require(:user).permit(:firstname, :lastname) 
    end
    
    
end
