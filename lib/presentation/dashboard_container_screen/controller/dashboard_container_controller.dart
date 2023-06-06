import 'package:rahul_s_application298/core/app_export.dart';
import 'package:rahul_s_application298/presentation/dashboard_container_screen/models/dashboard_container_model.dart';
import 'package:rahul_s_application298/widgets/custom_bottom_bar.dart';

class DashboardContainerController extends GetxController {
  var id = Get.arguments[NavigationArgs.id];

  var token = Get.arguments[NavigationArgs.token];

  Rx<DashboardContainerModel> dashboardContainerModelObj =
      DashboardContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
