# frozen_string_literal: true

class Actor < ApplicationRecord
  has_many :projects
  has_many :tv_series, through: :projects
  validates :name, presence: true
end
