class ContactsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
    respond_with(@contacts)
  end

  def show
    respond_with(@contact)
  end

  def new
    @contact = Contact.new
    respond_with(@contact)
  end

  def edit
  end

  def create

    @contact = Contact.new(contact_params)
    @contact.save
    respond_with(@contact)
  end

  def afterCreate
    #get contact that equals the emails
    @contact = Contact.find_or_create_by({email: current_user.email})
    @contact.save

    render 'edit'
    # render json: @contact
  end

  def update
    @contact.update(contact_params)
    respond_with(@contact)
  end

  def destroy
    @contact.destroy
    respond_with(@contact)
  end

  def showProfile
    @contact = Contact.where("email = '#{current_user.email}'").first
    render 'show'
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:intro, :name, :email, :user_id, :linkedin_id)
    end
end
