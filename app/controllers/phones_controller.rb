class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end

  def new
    @phone = Phone.new
    @os_collection  = []
    OperatingSystem.all.each do |os|
      @os_collection << os.name
    end
  end

  def create
    # @operating_systems = OperatingSystem.all
    @phone = Phone.new(phone_params)

    @phone.operating_system = OperatingSystem.find_by(name: params[:phone][:operating_system])
    if @phone.save
      flash[:notice] = "Phone saved succesfully!"
      redirect_to phones_path
    else
      flash[:error] = @phone.errors.full_messages.join('. ')
      render :new
    end
  end

  private

  def phone_params
    params.require(:phone).permit(
      :manufacturer,
      :screen_size,
      :charging_port,
      :name,
      :quantity,
      :operating_system_id
    )
  end
end
