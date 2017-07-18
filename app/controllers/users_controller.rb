class UsersController < ApplicationController
  before_action :authenticate_user!

  def home
    if current_user.reward == nil && current_user.admin != 1
      Reward.create(name: "Progress", user_id: current_user.id, award: 0)
    end
    if current_user.employees.empty? != true
      @users = current_user.employees
      @new_hire = @users.find_by(email: current_user.new_hire_email)
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

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        UserMailer.new_hire_email(@user).deliver_later
        current_user.update_attributes(new_hire_email: @user.email)
        format.html { redirect_to home_url, notice: "#{@user.name} registered, assign activities to them below" }
        format.json { render json: home_url, status: :created, location: home_url }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @user = User.find_by(id: current_user.id)
    if @user.update_attributes(user_params) && @user.admin == 1
      redirect_to home_url
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
    :new_hire_email, :name, :organization, :admin_id, :title)
  end

  def seed_admin(user)
    contents = Content.all
    contents.each do |c|
      a = Activity.create(c.attributes.slice(*Activity.attribute_names))
      a.update_attributes(user_id: user.id)
    end
  end
end
