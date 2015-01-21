require 'minitest/autorun'
require 'minitest/pride'
require './currency'

class CurrencyTest < MiniTest::Test
  def test_currency_class_exists
    assert Currency
  end

  def test_created_with_amount_and_currency_code
    currency = Currency.new(3, "RUB")
    assert currency.amount == 3
    assert currency.currency_code.length == 3
  end

  def test_equals_other_currency_object
    currency = Currency.new(3, "RUB")
    currency1 = Currency.new(3, "RUB")
    currency2 = Currency.new(3, "USD")
    currency3 = Currency.new(4, "USD")
    assert currency == currency1
    refute currency == currency2
    refute currency2 == currency3
  end

  def test_add_two_currency_objects
    currency = Currency.new(3, "RUB")
    currency1 = Currency.new(3, "RUB")
    currency2 = Currency.new(3, "USD")
    currency_result = currency + currency1
    assert currency_result.amount == 6
    assert currency_result.currency_code == "RUB"
    refute currency + currency2
  end

  def test_subtract_two_currency_objects
    currency = Currency.new(3, "RUB")
    currency1 = Currency.new(3, "RUB")
    currency2 = Currency.new(3, "USD")
    currency_result1 = currency - currency1
    assert currency_result1.amount == 0
    assert currency_result1.currency_code == "RUB"
    refute currency - currency2
  end

end
