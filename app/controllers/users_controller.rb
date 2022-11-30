class UsersController < ApplicationController
#     Find a user in the database using the user id from the session hash
# Return the user as a JSON object

    def show
        user = User.find_by(id: session[:user_id])
        render json: user
    end
end
