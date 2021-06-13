# frozen_string_literal: true

class Director < ApplicationRecord
  has_and_belongs_to_many :tv_series
  validates :name, presence: true
end
