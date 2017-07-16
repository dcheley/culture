class UsersController < ApplicationController
  before_action :authenticate_user!

  def home
    @user = User.new
    if current_user.reward == nil
      Reward.create(name: "Progress", user_id: current_user.id, award: 0)
    end
    if current_user.employees.empty? != true
      @users = current_user.employees
    end
    if current_user.admin == 1 && current_user.activities.empty?
      seed_admin(current_user)
    end
    if Tracker.find_by(user_email: current_user.new_hire_email) != nil
      @trackers = Tracker.where(user_email: current_user.new_hire_email).order("updated_at DESC")
    end
    @activities = Activity.where(user_id: current_user.id).order("name DESC")
    @activity = Activity.new
    @activity.trackers.build
  end

  def create
    @user = User.create(user_params)
    if @user.save
      current_user.update_attributes(new_hire_email: @user.email)
      @user.update_attributes(admin_id: current_user.id)
      redirect_to home_url, notice: 'New hire registered, assign activities to them below'
    else
      render :home
    end
  end

  def update
    @user = User.find_by(id: current_user.id)
    if @user.update_attributes(user_params) && @user.admin == 1
      redirect_to trackers_url
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @reward = @user.reward
    @trackers = @user.trackers
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,
    :new_hire_email)
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
