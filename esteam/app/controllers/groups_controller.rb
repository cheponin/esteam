class GroupsController < ApplicationController
    
    def index
        @groups = Group.all 
    end
    
    def new
        @group = Group.new 
    end
    
    def create
       @group = Group.new(group_params)
       respond_to do |format|
            if @group.save
                format.html { redirect_to '/groups', notice: 'Group was successfully created.' }
            else
                redirect_to '/groups', notice: 'An error occured.'
            end
        end
    end
    
    def update
        respond_to do |format|
            if @group.update(post_params)
                @group.name = current_group.name
                @group.save
                format.html { redirect_to '/', notice: 'Group was successfully updated.' }
            else
                redirect_to '/groups', notice: 'An error occured.'
            end
        end 
    end
    
    def destroy
        @group.destroy
        respond_to do |format|
            format.html { redirect_to '/groups', notice: 'Group was successfully destroyed.' }
        end 
    end
    
    private
        def group_params
            params.require(:group).permit(:name, :description)
        end
    
end
