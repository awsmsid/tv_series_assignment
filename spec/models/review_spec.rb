# frozen_string_literal: true

require 'rails_helper'

describe Review do
  let(:star) { 4 }
  let(:review_message) { 'Review Test' }
  let(:review) do
    described_class.new(star: star, review_message: review_message)
  end

  describe 'validate' do
    subject { review.valid? }

    context 'with empty star' do
      let(:star) { nil }

      it { is_expected.to eq false }
    end

    context 'with empty review message' do
      let(:review_message) { nil }

      it { is_expected.to eq false }
    end
  end
end
