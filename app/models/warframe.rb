class Warframe < ApplicationRecord
  ELEMENTS = ['impact', 'heat', 'cold', 'electricity', 'toxin', 'magnetic', 'radiation']

  validates :element, inclusion: { in: ELEMENTS }
end
