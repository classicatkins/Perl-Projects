# Perl Weather Fetcher

This Perl script fetches current weather data for a specified city using the OpenWeatherMap API. It demonstrates how to interact with web APIs, parse JSON data, and handle user inputs in Perl.

## Prerequisites

- Perl 5.x
- Perl Modules: `LWP::UserAgent`, `JSON`
  - These can be installed via CPAN if not already available on your system.

## Getting Started

### API Key

You need an API key from OpenWeatherMap to use their API services. Register on [OpenWeatherMap](http://openweathermap.org/) to obtain your free API key.

### Installation

1. Clone the repository or download the script directly.
2. Navigate to the directory containing the script.

### Configuration

Replace the placeholder API key in the script with your actual OpenWeatherMap API key:

```perl
my $api_key = 'your_api_key_here';  # Replace with your actual API key
Usage
To run the script, follow these steps:

Make the Script Executable:

```bash
chmod +x weather_fetcher.pl
```
Execute the Script:

```bash
./weather_fetcher.pl
```
Follow the prompts to enter the city for which you want to fetch the weather data.

## Output
The script will output the current temperature in Celsius for the specified city:

```less
Current temperature in [City Name]: [Temperature] °C
```

## Customization
You can expand this script to fetch additional weather details such as humidity, wind speed, or weather conditions. Modify the parsing logic to extract and display these additional data points.

## Disclaimer
This script is for educational purposes only. Make sure that your usage of the OpenWeatherMap API complies with their terms of service.
