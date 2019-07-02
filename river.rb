# frozen_string_literal: true

class River
  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def amount_of_fish_in_river
    @fish.length
  end

  def add_fish_to_river(fish)
    @fish << fish
  end
end
