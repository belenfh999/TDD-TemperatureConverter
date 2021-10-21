module TemperatureConverterMod
  class TemperatureConverter
    def convert_temp(temperature, input_scale:, output_scale: 'celsius')
      if input_scale == 'celsius' and output_scale == 'fahrenheit'
        (temperature * 1.8) + 32
      elsif input_scale == 'fahrenheit' and output_scale == 'celsius'
        ((temperature - 32.0) / 1.8)
      elsif input_scale == 'celsius' and output_scale == 'kelvin'
        temperature + 273.15
      elsif input_scale == 'kelvin' and output_scale == 'celsius'
        temperature - 273.15
      elsif input_scale == 'kelvin' and output_scale == 'fahrenheit'
        (temperature - 273.15) * 1.8
      else
      temperature
      end
    end
  end
end
