#!/bin/bash
# This code gets weather data based on your PIN code. You can add this script to your bashrc and it will run whenever bash starts.
# You can create account https://www.weatherapi.com/ and generate your api key
echo "Hello, Welcome :)"
weather_data=$(curl --no-progress-meter "https://api.weatherapi.com/v1/current.json?key=${your_api_key}&q={your_pin_code_url_encoded}&aqi=no")
location=$(echo $weather_data | jq ".location.name")
echo "Your current location is: " $location
temperature=$(echo $weather_data | jq ".current.heatindex_c")
echo "Temperature : " $temperature
feels_temp=$(echo $weather_data | jq ".current.feelslike_c")
echo "Feels like : " $feels_temp
condition=$(echo $weather_data | jq ".current.condition.text")
printf "Condition Outside: %s" "$condition"
