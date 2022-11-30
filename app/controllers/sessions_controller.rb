class SessionsController < ApplicationController
#     Find a user in the database using the username from params
# Save the user's ID to the session hash
# Return the user as a JSON object
    def create
        user = User.find_by(username: params[:username])
        if user
            session[:user_id]= user.id
            render json: user
        else
            render json: {error: 'cannot find user'}
        end
    end

#     Remove the user ID from the session hash
# Return an empty response with a 204 No Content status code

    def destroy
        session.delete :user_id
        head :no_content
    end

    # GET /me: run the UsersController#show method
    def show 
        user = User.find_by(username: params[:username])
        render json: user
    end
end
