# frozen_string_literal: true

require 'rails_helper'

describe Genre do
  let(:title) { 'test' }
  let(:genre) do
    described_class.new(title: title)
  end

  describe 'validate' do
    subject { genre.valid? }

    context 'with empty title' do
      let(:title) { nil }

      it { is_expected.to eq false }
    end
  end
end
