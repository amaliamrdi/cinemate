import 'dart:convert';

import 'package:flutflix/models/movie.dart';
import 'package:flutflix/widgets/constants.dart';
import 'package:http/http.dart' as http;

class Api {
    static const _trendingUrl = 'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apiKey}';

    Future<List<Movie>> getTrendingMovies() async{
      final respone = await http.get(Uri.parse(_trendingUrl));
      if(respone.statusCode == 200) {
        final decodeData = json.decode(respone.body)['results'] as List;
        return decodeData.map((movie) => Movie.fromJson(movie)).toList();
      }else{
        throw Exception('Something happend');
      }
    }
}