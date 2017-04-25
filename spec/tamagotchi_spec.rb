require 'rspec'
require 'tamagotchi'

describe(Tamagotchi) do
  describe '#initialize' do
    it 'sets the name and life levels of a new Tamagotchi' do
    my_pet = Tamagotchi.new('little dragon(the band)')
    expect(my_pet.name).to(eq('little dragon(the band)'))
    expect(my_pet.food_level).to(eq(10))
    expect(my_pet.sleep_level).to(eq(10))
    expect(my_pet.activity_level).to(eq(10))
    end
  end

  describe("#is_alive") do
    it 'is alive if the food level is above 0' do
      my_pet = Tamagotchi.new('little dragon(the band)')
      expect(my_pet.is_alive).to(eq(true))
    end

    it 'is dead if the food level is 0' do
      my_pet = Tamagotchi.new('little dragon(the band)')
      my_pet.set_food_level(0)
      expect(my_pet.is_alive).to(eq(false))
    end
  end

  describe '#time_passes' do
    it 'decreases the amount of food the Tamagotchi has left by 1' do
      my_pet = Tamagotchi.new('little dragon(the band)')
      my_pet.time_passes  #decide what trigger you will use to make time pass
      expect(my_pet.food_level).to(eq(9))
    end
  end

  describe '#status' do
    it "shows the tamagotchi's current food, sleep and activity levels" do
      paul = Tamagotchi.new('paul')
      expect(paul.status).to(eq("Food level: 10 Sleep level: 10 Activity level: 10"))
    end
  end

  describe '#feed_it' do
    it 'will allow the user to feed the tamagotchi' do
      paul = Tamagotchi.new('paul')
      paul.feed_it(3)
      expect(paul.food_level).to(eq(13))
    end
  end

  describe '#play_with' do
    it 'will allow the user to play with the tamagotchi' do
      paul = Tamagotchi.new('paul')
      paul.play_with(3)
      expect(paul.activity_level).to(eq(13))
    end
  end

  describe '#tuck_in' do
    it 'will allow the user to put the tamagotchi to bed' do
      paul = Tamagotchi.new('paul')
      paul.tuck_in(3)
      expect(paul.sleep_level).to(eq(13))
    end
  end

end
