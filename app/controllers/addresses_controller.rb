class AddressesController < ApplicationController

  before_filter :authenticate_user!
  before_filter :authenticate_as_owner!, :only => [:destroy]

  def create
    @address = Address.new(params[:address])
    @address.user_id = current_user.id
    @address.save!
    
    respond_to do |format|
      format.js
    end
  end
  
  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    
    respond_to do |format|
      format.js
    end
  end
  
  private
  # Before Filter to authenticate the owner
  def authenticate_as_owner!
    if !current_user.addresses.include?(Address.find(params[:id]))
      redirect_to :root
    end
  end
  
end
