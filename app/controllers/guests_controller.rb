class GuestsController < ApplicationController
  before_action :find_guest, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token, only: %i[create]

  # GET /guests
  def index
    # Get the last 50's clicks
    @guests = Guest.last(50)
    # Get all the guests
    # @guests = Guest.all
  end

  # GET /guests/index
  def show; end

  # GET /guests/new
  def new
    @guest = Guest.new
  end

  # GET /guests/index/edit
  def edit; end

  # POST /guests
  def create
    @guest = Guest.new(guest_params)
    respond_to do |format|
      if @guest.save
        format.html { redirect_to guests_url, notice: 'Guest was successfully created.' }
        format.json { render :show, status: :created, location: @guest }
      else
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guests/index
  def update
    if @guest.update(guest_params)
      redirect_to @guest, notice: 'Guest was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /guests/index
  def destroy
    @guest.destroy
    redirect_to guests_url, notice: 'Guest was successfully destroyed.'
  end

  private

  # Callback to share common setup.
  def find_guest
    @guest = Guest.find(params[:id])
  end

  # Allow only white list parameters.
  def guest_params
    params.permit(:uuid, :url, :timestamp)
  end
end
