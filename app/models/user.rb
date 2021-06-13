# frozen_string_literal: true

class User < ApplicationRecord
  has_many :reviews
  validates :name, presence: true
end
