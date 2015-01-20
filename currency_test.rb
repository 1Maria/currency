require 'minitest/autorun'
require 'minitest/pride'
require './currency'

class CurrencyTest < MiniTest::Test
  def test_currency_class_exists
    assert Currency
  end
end
