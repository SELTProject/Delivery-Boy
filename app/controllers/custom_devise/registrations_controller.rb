class CustomDevise::RegistrationsController < Devise::RegistrationsController

  def create
    @rid = params[:user][:rid]
    super
    #if resource.save
    if resource.persisted?
      @rolesuser = Rolesuser.new
      @rolesuser.user_id = resource.id
      @rolesuser.role_id = @rid
      #@rolesuser.role_id = 1
      Rails.logger.debug "account: #{@rid}"
      #@user.roles << Role.find_by_name(resource.rid)
      @rolesuser.save
    end
  end

  def destroy
    super
    if resource.destroy
      @rolesuser = @Rolesuser.find_all_by_user_id(resource.id)
      @rolesuser.each do |rolesuser|
        rolesuser.destroy
      end
    end
  end

end
