# frozen_string_literal: true

class Bear
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def number_of_fish_in_stomach
    @stomach.length
end

  def add_fish_to_stomach(fish)
    @stomach << fish
  end

  def bear_eats_fish(fish)
    @bear << fish.clear
  end
end
