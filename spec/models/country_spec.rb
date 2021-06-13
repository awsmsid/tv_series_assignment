# frozen_string_literal: true

require 'rails_helper'

describe Country do
  let(:name) { 'test' }
  let(:country) do
    described_class.new(name: name)
  end

  describe 'validate' do
    subject { country.valid? }

    context 'with empty name' do
      let(:name) { nil }

      it { is_expected.to eq false }
    end
  end
end
