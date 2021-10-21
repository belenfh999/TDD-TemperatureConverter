require 'minitest/autorun'
require_relative '../lib/temperature_converter'
class TemperatureConverterTest < Minitest::Test
  include TemperatureConverterMod
  def setup
    @temperature_converter = TemperatureConverter.new
  end

  def test_celsius_to_celsius
    expected_temperature = 20
    assert_equal(expected_temperature, @temperature_converter.convert_temp(20, input_scale: 'celsius'))
  end

  def test_kelvin_to_kelvin
    expected_temperature = 20
    assert_equal(expected_temperature, @temperature_converter.convert_temp(20, input_scale: 'kelvin', output_scale: 'kelvin'))
  end

  def test_fahrenheit_to_fahrenheit
    expected_temperature = 20
    assert_equal(expected_temperature, @temperature_converter.convert_temp(20, input_scale: 'fahrenheit', output_scale: 'fahrenheit'))
  end
end