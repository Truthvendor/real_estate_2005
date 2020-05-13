require './lib/room'

class House
  attr_reader :price,
              :rooms,
              :above_market_average
              :area

def initialize(price, address)
  @price = price
  @address = address
  @rooms = []
  @above_market_average = false
end

  def add_room(room)
    @rooms << room
  end


  # def rooms_from_category(room)
  #
  # end

  def details
    details = {price: "$400000",
               address: "123 sugar lane"

    }
  end
end
