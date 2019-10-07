class ChangeMaker
  COINS = {
    quarter: 25,
    dime: 10,
    nickel: 5,
    penny: 1
  }

  def initialize(amount)
    @amount = amount
  end

  def calculate
    remaining_value = amount
    COINS.reduce({}) do |summary, (coin_name, coin_value)|
      return summary if remaining_value.zero?

      coin_quantity = remaining_value / coin_value
      summary[coin_name] = coin_quantity
      remaining_value -= coin_quantity * coin_value
      summary
    end
  end

  private

  attr_reader :amount
end
