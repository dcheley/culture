class UsersController < ApplicationController
  before_action :authenticate_user!

  def home
    @user = User.new
    @users = User.all
    if current_user.admin == 1 && current_user.activities.empty?
      seed_admin(current_user)
    end
  end

  def create
    @user = User.create(user_params)
    if @user.save
      current_user.update_attributes(new_hire_email: @user.email)
      redirect_to trackers_url, notice: 'New hire registered, assign activities to them below'
    else
      render :select_new_hire
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @reward = @user.reward
    @trackers = @user.tracked_activities
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def seed_admin(user)
    # user = User.find_by(params[:email])
    contents = Content.all
    contents.each do |c|
      a = Activity.create(c.attributes.slice(*Activity.attribute_names))
      a.update_attributes(user_id: user.id)
    end
  end
end
