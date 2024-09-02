import 'dart:developer';
import 'package:cartgeek/constants/api_urls.dart';
import 'package:cartgeek/model/current_bookings_model.dart';
import 'package:cartgeek/model/package_list_model.dart';
import 'package:cartgeek/service/api_service.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  List<BookingModel> bookingList = [];
  List<PackageModel> packageList = [];

  Future<void> fetchBookingData() async {
    try {
      ApiService bookingService = ApiService();
      List<BookingModel> bookings = await bookingService.getDatas(
        ApiUrls.bookingUrl, 
        (json) => BookingModel.fromJson(json)
      );
      bookingList = bookings;
      notifyListeners(); 
    } catch (e) {
      log('Failed to fetch bookings: $e');
    }
  }

  Future<void> fetchPackageData() async {
    try {
      ApiService bookingService = ApiService();
      List<PackageModel> packages = await bookingService.getDatas(
        ApiUrls.packageUrl, 
        (json) => PackageModel.fromJson(json)
      );
      packageList = packages;
      notifyListeners(); 
    } catch (e) {
      log('Failed to fetch packages: $e');
    }
  }
}
