# frozen_string_literal: true

require 'rails_helper'

describe Director do
  let(:name) { 'test' }
  let(:director) do
    described_class.new(name: name)
  end

  describe 'validate' do
    subject { director.valid? }

    context 'with empty name' do
      let(:name) { nil }

      it { is_expected.to eq false }
    end
  end
end
