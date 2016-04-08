class OperatingSystemsController < ApplicationController
  def index
    @os = OperatingSystem.new
    @operating_systems = OperatingSystem.all
  end

  def create
    os = OperatingSystem.new(operating_system_params)

    if os.save
      flash[:notice] = "Succesfully added operating system!"
    else
      flash[:error] = "Fill in the name!"
    end
    redirect_to operating_systems_path
  end

  private

  def operating_system_params
    params.require(:operating_system).permit(:name)
  end
end
