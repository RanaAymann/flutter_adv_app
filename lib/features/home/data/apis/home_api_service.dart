import 'package:dio/dio.dart';
import 'package:flutter_adv_app/core/networking/api_constants.dart';
import 'package:flutter_adv_app/features/home/data/apis/home_apis_constants.dart';
import 'package:flutter_adv_app/features/home/data/models/specializations_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: APIConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
}
