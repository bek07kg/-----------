import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/constants/api.dart';
import 'package:weather_app/constants/app_text_styles.dart';
import 'package:weather_app/models/weather.dart';

import '../components/city_container.dart';
import '../constants/app_colors.dart';

const List cityes = <String>[
  'bishkek',
  'osh',
  'moscow',
  'new york',
  'dubai',
  'berlin',
  'london',
  'paris',
  'tokyo',
  'seoul',
  'hong kong',
  'saint petersburg',
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Weather? weather;

  Future<void> weatherLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission == await Geolocator.requestPermission();
      if (permission == LocationPermission.always &&
          permission == LocationPermission.whileInUse) {
        Position position = await Geolocator.getCurrentPosition();

        final dio = Dio();
        final response = await dio
            .get(Api.getLocator(position.latitude, position.longitude));

        if (response.statusCode == 200) {
          weather = Weather(
            temp: response.data['current']['temp'],
            description: response.data['current']['weather'][0]['description'],
            icon: response.data['current']['weather'][0]['icon'],
            name: response.data['timezone'],
          );
          setState(() {});
        }
      }
    } else {
      Position position = await Geolocator.getCurrentPosition();

      final dio = Dio();
      final response =
          await dio.get(Api.getLocator(position.latitude, position.longitude));

      if (response.statusCode == 200) {
        final Weather weather = Weather(
          temp: response.data['current']['temp'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'],
          name: response.data['timezone'],
        );
        setState(() {});
      }
    }
  }

  Future<void> weatherName([String? name]) async {
    final dio = Dio();
    final response = await dio.get(Api.api(name ?? 'bishkek'));

    if (response.statusCode == 200) {
      weather = Weather(
        temp: response.data['main']['temp'],
        description: response.data['weather'][0]['description'],
        icon: response.data['weather'][0]['icon'],
        name: response.data['name'],
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    weatherName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Дуйно шаарларынын аба ырайы",
          style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: weather == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/foto_kg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    CityContainer(
                      weather: weather,
                      color: AppColors.blue,
                      text: weather!.name,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "${(weather!.temp - 273.15).truncate()}",
                              style: AppTextStyles.temp,
                            ),
                          ),
                        ),
                        const SizedBox(width: 40),
                        Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Image.network(Api.getIcon(weather!.icon, 4)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Container(
                      height: 80,
                      width: 300,
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            showBottom();
                          });
                        },
                        child: const Center(
                          child: Text(
                            "Башка шаарларды тандоо",
                            style: AppTextStyles.cityBtn,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  void showBottom() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.5,
          color: AppColors.blue,
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: cityes.length,
            itemBuilder: (BuildContext context, int index) {
              final city = cityes[index];
              return Card(
                child: ListTile(
                  onTap: () async {
                    setState(() {
                      weather = null;
                    });
                    weatherName(city);
                    Navigator.pop(context);
                  },
                  title: Text(city),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
