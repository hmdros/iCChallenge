class ContactsController < ApplicationController
  before_action :find_contact, only: %i[show edit update destroy]

  # GET /leads
  def index
    @contacts = Contact.all
  end

  # GET /leads/index
  def show; end

  # GET /leads/new
  def new
    @contact = Contact.new
  end

  # POST /leads
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to @contact, notice: 'Contact was successfully created.'
    else
      render :new
    end
  end

  # GET /leads/index/edit
  def edit; end

  # PATCH/PUT /leads/index
  def update
    if @contact.update(contact_params)
      redirect_to @contact, notice: 'Contact was successfully updated.'
    else
      ender :edit
    end
  end

  # DELETE /leads/index
  def destroy
    @contact.destroy
    redirect_to contacts_url, notice: 'Contact was successfully destroyed.'
  end

  private

  # Callback to share common setup.
  def find_contact
    @contact = Contact.find(params[:id])
  end

  # Allow only white list parameters.
  def contact_params
    params.require(:contact).permit(:name, :email)
  end
end
