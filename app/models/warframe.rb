class Warframe < ApplicationRecord
  ELEMENTS = ['Impact', 'Heat', 'Cold', 'Electricity', 'Toxin', 'Magnetic', 'Radiation']

  validates :element, inclusion: { in: ELEMENTS }
end
