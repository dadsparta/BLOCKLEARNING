import 'dart:core';
import 'package:blocklearning/app/data/provider/storage_provider_keys.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageProvider extends GetxService {
  final box = GetStorage();

  Future init() async {
    await GetStorage.init();
  }

  void addSmsSend() {
    var sms = getSmsSend();
    sms.add(DateTime.now());
    box.write(StorageProviderKeys.smsDatesKey,
        sms.map((e) => e.toIso8601String()).toList());
  }

  List<DateTime> getSmsSend() {
    return box
            .read<List>(StorageProviderKeys.smsDatesKey)
            ?.map((e) => DateTime.parse(e))
            .toList() ??
        [];
  }

  void completeOnboarding() {
    box.write(StorageProviderKeys.onboardingCompleted, true);
  }

  void resetOnboardingCompleted() {
    box.write(StorageProviderKeys.onboardingCompleted, false);
  }

  bool getOnboardingCompleted() {
    return box.read(StorageProviderKeys.onboardingCompleted) ?? false;
  }
}
