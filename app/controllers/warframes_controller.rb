class WarframesController < ApplicationController
  def index
    @wfs = Warframe.all.includes(:name, :element)
    @wf = Warframe.find_by(params[:name])
    @wf_names = Warframe.all.map(&:name)
    @elements = ['Impact', 'Heat', 'Cold', 'Electricity', 'Toxin', 'Magnetic', 'Radiation']
  end
end
