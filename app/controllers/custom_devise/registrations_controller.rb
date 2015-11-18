class CustomDevise::RegistrationsController < Devise::RegistrationsController

  def create
    @rid = params[:user][:rid]
     super
    # #if resource.save
      if resource.persisted?
    #   @rolesuser = Rolesuser.new
    #   @rolesuser.user_id = resource.id
    #   @rolesuser.role_id = @rid
    #   #@rolesuser.role_id = 1
        Rails.logger.debug "account: #{@rid}"
        @user = User.find(resource.id)
        @user.roles << Role.find_by_name(@rid)
    #   @rolesuser.save
      end
  end

  def destroy
    super
    # if resource.destroy
    #   @rolesuser = @Rolesuser.find_all_by_user_id(resource.id)
    #   @rolesuser.each do |rolesuser|
    #     rolesuser.destroy
    #   end
    # end
  end

  protected

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end

end
