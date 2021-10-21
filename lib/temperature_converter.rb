module TemperatureConverterMod
  class TemperatureConverter
    def convert_temp(temperature, input_scale:, output_scale: 'celsius')
      case input_scale
      when 'celsius'
        return (temperature * 1.8) + 32 if output_scale == 'fahrenheit'
        return temperature + 273.15 if output_scale == 'kelvin'
      when 'fahrenheit'
        return ((temperature - 32) / 1.8) + 273.15 if output_scale == 'kelvin'
        return ((temperature - 32.0) / 1.8) if output_scale == 'celsius'
      when 'kelvin'
        return temperature - 273.15 if output_scale == 'celsius'
        return (temperature - 273.15) * 1.8 if output_scale == 'fahrenheit'
      end
      temperature
    end
  end
end
