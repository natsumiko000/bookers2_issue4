class RelationshipsController < ApplicationController
	def follow
	  current_user.follow(params[:id])
	  redirect_back(fallback_location: root_path)
	end

	def unfollow
	  current_user.unfollow(params[:id])
	  redirect_back(fallback_location: root_path)
	end

	def follows_list
	  @user = User.find(params[:user_id])
	  @users = User.all
	end

	def followers_list
	  @user = User.find(params[:user_id])
	  @users = User.all
	end
end
