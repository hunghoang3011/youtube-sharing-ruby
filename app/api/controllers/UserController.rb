class UserController < ApplicationController
    # GET /users
    def index
      @users = User.all
    end
  
    # GET /users/new
    def new
      @user = User.new
    end
  
    # POST /users
    def create
      @user = User.new(user_params)
  
      if @user.save
        redirect_to @user, notice: 'User was successfully created.'
      else
        render :new
      end
    end
  
    # GET /users/:id
    def show
      @user = User.find(params[:id])
    end
  
    # PATCH /users/:id
    def update
      @user = User.find(params[:id])
  
      if @user.update(user_params)
        redirect_to @user, notice: 'User was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /users/:id
    def destroy
      @user = User.find(params[:id])
      @user.destroy
  
      redirect_to users_url, notice: 'User was successfully destroyed.'
    end
  
    private
  
    # Only allow a trusted parameter "whitelist" through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end