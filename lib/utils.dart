import "package:device_info_plus/device_info_plus.dart";
import "package:logger/logger.dart";

class Utils {
  Utils();

  static DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  static Logger logger = Logger();

  Future<List<String>> getAndroidInfo() async {
    final AndroidDeviceInfo info = await deviceInfoPlugin.androidInfo;
    final List<String> list = [
      "Version:\n${info.version.sdkInt}\n",
      "Codename:\n${info.version.codename}\n",
      "Release:\n${info.version.release}\n",
      "Incremental:\n${info.version.incremental}\n"
      "Security Patch:\n${info.version.release}\n"
      "Board:\n${info.board}\n",
      "Bootloader:\n${info.bootloader}\n",
      "Brand:\n${info.brand}\n",
      "Device:\n${info.device}\n",
      "Display:\n${info.display}\n",
      "Fingerprint:\n${info.fingerprint}\n",
      "Hardware:\n${info.hardware}\n",
      "Host:\n${info.host}\n",
      "ID:\n${info.id}\n",
      "Manufacturer:\n${info.manufacturer}\n",
      "Model:\n${info.model}\n",
      "Product:\n${info.product}\n",
      "Supported 32-bit ABIs:\n${info.supported32BitAbis.join(", ")}\n",
      "Supported 64-bit ABIs:\n${info.supported64BitAbis.join(", ")}\n",
      "Supported ABIs:\n${info.supportedAbis.join(", ")}\n",
      "Tags:\ninfo.tags",
      "Type:\n${info.type}\n",
      "Is Physical Device:\n${info.isPhysicalDevice}\n",
      "System Features:\n${info.systemFeatures.join(", ")}\n",
      "Serial Number:\n${info.serialNumber}\n",
      "Is Low RAM Device:\n${info.isLowRamDevice}\n",
    ];
    logger.d(list);

    return list;
  }
}
