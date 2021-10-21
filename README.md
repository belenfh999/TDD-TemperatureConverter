# TDD-TemperatureConverter
Implementation of a Temperature Scale Converter to learn TDD using Ruby &amp; MiniTest.

## Temperature Conversion formulas
* Celsius -> Fahrenheit: (temperature * 1.8) + 32
* Celsius -> Kelvin:      temperature + 273.15
* Fahrenheit -> Kelvin:  ((temperature - 32) / 1.8) + 273.15
* Fahrenheit -> Celsius: ((temperature - 32.0) / 1.8)
* Kelvin -> Celsius:      temperature - 273.15
* Kelvin -> Fahrenheit:  (temperature - 273.15) * 1.8

## Setup
* The rubyMine IDE was used for this project.
* MiniTest is the testing framework is MiniTest.
* The ruby version is 2.6.4

## Problem to be tackled
* Build a method called convert_temp that takes 3 arguments using a TDD approach:
  * temperature: 
    * Type: Float
    * Description: The temperature to be converted.
  * input_scale: 
    * Type: Keyword
    * Description: The scale of the temperature provided.
  * output_scale: 
    * Type: Keyword
    * Description: Desired scale to convert into. By default it is celsius.
* The method should return the temperature in the output scale.
* Note that the scales names have to be in lowercase.
