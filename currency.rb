class Currency
  attr_reader :amount, :currency_code

  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end

  def ==(other)
    amount == other.amount && compare_currency_codes(other)
  end


end
