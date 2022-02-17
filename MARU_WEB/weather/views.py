import urllib.request
import json
from django.shortcuts import render


def index(request):

    if request.method == 'POST':
        city = request.POST['city']

        

        source = urllib.request.urlopen('http://api.openweathermap.org/data/2.5/weather?q=' +
                                        city + '&units=metric&appid=49cc8c821cd2aff9af04c9f98c36eb74').read()
        list_of_data = json.loads(source)

        data = {
            "country_code": str(list_of_data['sys']['country']),
            "city_name": str(list_of_data['name']),
            "country_name": str(list_of_data['timezone']),
            "coordinate": str(list_of_data['coord']['lon']) + ', '
            + str(list_of_data['coord']['lat']),

            "temp": str(list_of_data['main']['temp']) + ' °C',
            "pressure": str(list_of_data['main']['pressure']) + ' mb',
            "humidity": str(list_of_data['main']['humidity']) + ' %',
            'main': str(list_of_data['weather'][0]['main']),
            'description': str(list_of_data['weather'][0]['description']),
            'icon': list_of_data['weather'][0]['icon'],

            "windspeed": str(list_of_data['wind']['speed']) + ' km/h',
            "sunrise": str(list_of_data['sys']['sunrise']),
            "sunset": str(list_of_data['sys']['sunset']) ,

            # "info": str(list_of_data['alerts']['description']),
        }
        print(data)


    else:
        data = {}

    return render(request, "weather/index.html", data)
