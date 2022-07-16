# frozen_string_literal: true

require 'calculator'

describe Calculator do
  context '#div' do
    it 'divided by 0' do
      expect { subject.div(3, 0) }.to raise_error(ZeroDivisionError)
      expect { subject.div(3, 0) }.to raise_error('divided by 0')
      expect { subject.div(3, 0) }.to raise_error(ZeroDivisionError, 'divided by 0')
    end
  end
  context '#sum' do
    it 'with positive numbers' do
      result = subject.sum(8, 8)
      expect(result).to eq(16)
    end

    it 'with negative numbers' do
      result = subject.sum(-8, 8)
      expect(result).to eq(0)
    end
  end
end
