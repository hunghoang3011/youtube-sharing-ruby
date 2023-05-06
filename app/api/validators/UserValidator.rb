class UserValidator

    def initialize(user)
      @user = user
    end
  
    def validate
      errors = []
  
      # Check if the user's name is present.
      if @user.name.blank?
        errors << "Please enter a name."
      end
  
      # Check if the user's email is present and valid.
      if @user.email.blank?
        errors << "Please enter an email address."
      elsif !@user.email.match(/^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,6}$/)
        errors << "Please enter a valid email address."
      end
  
      # Check if the user's password is present and at least 6 characters long.
      if @user.password.blank?
        errors << "Please enter a password."
      elsif @user.password.length < 6
        errors << "Your password must be at least 6 characters long."
      end
  
      return errors
    end
  end