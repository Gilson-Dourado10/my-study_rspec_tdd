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

      
    it 'with negative numbers' do
        result = subject.sum(-5, 5)
        expect(result).to eq(0)
    end
  end
  context '#multiply' do
     it 'with positive numbers' do
        result = subject.multiply(2, 3)
        expect(result).to eq(6)
    end

      it "with negative numbers" do
          result = subject.multiply(-2,3)
          expect(result).to eq(-6)
      end
  end
    context '#subtract '  do
        it 'given two numbers' do
        result = subject.subtract( 7, 9)
        expect(result).to eq(-2)
        end

     context '#modulo' do
            it 'given two numbers' do
            result = subject.modulo(15 , 3)
            expect(result).to eq(3)
          end
        end
    end
end



  




