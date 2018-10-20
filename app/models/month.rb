# frozen_string_literal: true

class Month < ApplicationRecord

  module Season
    include EnumUtils
    WINTER = 'Hiver'
    SPRING = 'Printemps'
    SUMMER = 'Été'
    AUTUMN = 'Automne'
  end
end
