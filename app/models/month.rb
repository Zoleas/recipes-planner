# frozen_string_literal: true

class Month < ApplicationRecord
  has_and_belongs_to_many :ingredients

  module Season
    include EnumUtils
    WINTER = 'Hiver'
    SPRING = 'Printemps'
    SUMMER = 'Été'
    AUTUMN = 'Automne'
  end
end
