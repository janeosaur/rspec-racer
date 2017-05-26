require 'spec_helper'

RSpec.describe Car do
  describe '::new' do
    it 'sets the initial speed of a car to 0' do
      car = Car.new
      expect(car.speed).to eq(0)
    end
  end

  describe '#speed' do
    it 'has a speed getter method' do
      car = Car.new
      expect(car.speed).to_not be_nil
    end
  end

  describe '#accelerate' do
    it 'increases the speed of car by a given amount' do
      car = Car.new
      car.speed = 5
      car.accelerate(10)
      expect(car.speed).to eq(15)
    end
  end
end
