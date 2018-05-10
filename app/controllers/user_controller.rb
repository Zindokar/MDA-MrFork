class UserController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def destroy
    @user.destroy
    current_user.role
    respond_to do |format|
      format.html { redirect_to("/admin/control_panel" , notice: 'User was successfully destroyed.' )}
      format.json { head :no_content }
    end
  end



  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name)
  end
end
