class Dock
  attr_reader :name, :max_rental_time, :rental_log
  def initialize(name, max_rental_time)
    @name            = name
    @max_rental_time = max_rental_time
    @rental_log      = {}
  end

  def rent(boat,renter)
    rental_log[boat] = renter
  end

  # def total_charge_ammount
  #   boat.hours_rented * boat.price_per_hour
  # end

  def charge(boat)
    if boat.hours_rented <= max_rental_time
      {:card_number => rental_log[boat].credit_card_number,
      :amount => (boat.hours_rented * boat.price_per_hour)}
    else
      {:card_number => rental_log[boat].credit_card_number,
      :amount => max_rental_time * boat.price_per_hour }
    end
  end

end
