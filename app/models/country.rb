# frozen_string_literal: true

class Country < ApplicationRecord
  has_many :tv_series
  validates :name, presence: true
end
