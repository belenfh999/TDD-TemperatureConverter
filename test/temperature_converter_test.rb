require 'minitest/autorun'
require_relative '../lib/temperature_converter'
class TemperatureConverterTest < Minitest::Test
  include TemperatureConverterMod
  def setup
    @temperature_converter = TemperatureConverter.new
  end

  def test_celsius_to_celsius
    input_temperature = 20
    expected_temperature = 20
    assert_equal(expected_temperature, @temperature_converter.convert_temp(input_temperature, input_scale: 'celsius'))
  end

  def test_kelvin_to_kelvin
    input_temperature = 20
    expected_temperature = 20
    assert_equal(expected_temperature, @temperature_converter.convert_temp(input_temperature, input_scale: 'kelvin', output_scale: 'kelvin'))
  end

  def test_fahrenheit_to_fahrenheit
    input_temperature = 20
    expected_temperature = 20
    assert_equal(expected_temperature, @temperature_converter.convert_temp(input_temperature, input_scale: 'fahrenheit', output_scale: 'fahrenheit'))
  end

  def test_celsius_to_fahrenheit
    input_temperature = 0
    expected_temperature = 32.0
    assert_equal(expected_temperature,
                 @temperature_converter.convert_temp(input_temperature, input_scale: 'celsius', output_scale: 'fahrenheit'))
  end

  def test_fahrenheit_to_celsius
    input_temperature = 0
    expected_temperature = ((input_temperature - 32.0) / 1.8)
    assert_equal(expected_temperature,
                 @temperature_converter.convert_temp(input_temperature, input_scale: 'fahrenheit', output_scale: 'celsius'))
  end
end