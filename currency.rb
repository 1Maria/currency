class Currency
  attr_reader :amount, :currency_code

  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end

  def ==(other)
    amount == other.amount && compare_currency_codes(other)
  end

  def compare_currency_codes(other)
    currency_code == other.currency_code
  end

  def +(other)
    raise DifferentCurrencyCodeError.new("Different currency codes cannot be added together.") if !compare_currency_codes(other)
    Currency.new(amount + other.amount, currency_code)
  end

  def -(other)
    raise DifferentCurrencyCodeError.new("Different currency codes cannot be subtracted together.") if !compare_currency_codes(other)
    Currency.new(amount - other.amount, currency_code)
  end
end
