class WarframesController < ApplicationController
  def index
    @wfs = Warframe.all
    @wf = Warframe.find_by(name: params[:wf][:name])
    @elements = ['Impact', 'Heat', 'Cold', 'Electricity', 'Toxin', 'Magnetic', 'Radiation']
  end

  def show
    @wf = Warframe.find_by(name: params[:wf][:name])
  end
end
