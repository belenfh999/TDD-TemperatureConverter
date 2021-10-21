module TemperatureConverterMod
  class TemperatureConverter
    def convert_temp(temperature, input_scale:, output_scale: 'celsius')
      if input_scale == 'celsius' and output_scale == 'fahrenheit'
        (temperature * 1.8) + 32
      else
      temperature
      end
    end
  end
end
