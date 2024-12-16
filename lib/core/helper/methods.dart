import 'dart:io';
import 'package:Energya/core/helper/preferences/shared.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';

String generateFileName(
    String projectName, String orderName, String releaseName) {
  return "$projectName-$orderName-$releaseName.xlsx";
}

Future<String> getStoragePath(String projectName, String orderName) async {
  Directory appDirectory = await getApplicationDocumentsDirectory();
  String folderPath = "${appDirectory.path}/$projectName/$orderName";
  Directory folder = Directory(folderPath);

  if (!await folder.exists()) {
    await folder.create(recursive: true);
  }
  return folderPath;
}

Future<void> uploadFile({
  required String projectName,
  required String orderName,
  required String releaseName,
}) async {
  try {
    // اختيار الفايل من الجهاز
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx'],
    );

    if (result != null) {
      File file = File(result.files.single.path!);

      // إنشاء المسار التخزيني
      String folderPath = await getStoragePath(projectName, orderName);
      String fileName = generateFileName(projectName, orderName, releaseName);
      String filePath = "$folderPath/$fileName";

      // نسخ الفايل للمسار المحدد
      await file.copy(filePath);

      print('تم حفظ الفايل في: $filePath');
    } else {
      print('لم يتم اختيار أي فايل.');
    }
  } catch (e) {
    print('حدث خطأ أثناء رفع الفايل: $e');
  }
}

Future<File?> getFile({
  required String projectName,
  required String orderName,
  required String releaseName,
}) async {
  try {
    String folderPath = await getStoragePath(projectName, orderName);
    String fileName = generateFileName(projectName, orderName, releaseName);
    String filePath = "$folderPath/$fileName";

    File file = File(filePath);
    if (await file.exists()) {
      return file;
    } else {
      print("الفايل غير موجود في: $filePath");
      return null;
    }
  } catch (e) {
    print("حدث خطأ أثناء استرجاع الفايل: $e");
    return null;
  }
}

Future<void> deleteFile({
  required String projectName,
  required String orderName,
  required String releaseName,
}) async {
  try {
    File? file = await getFile(
      projectName: projectName,
      orderName: orderName,
      releaseName: releaseName,
    );

    if (file != null) {
      await file.delete();
      print("تم حذف الفايل بنجاح.");
    }
  } catch (e) {
    print("حدث خطأ أثناء حذف الفايل: $e");
  }
}

Future<void> addTag({
  required String project,
  required String order,
  required String release,
}) async {
  Map<String, dynamic> tags = await SharedPrefs().getJsonFromString('tags');

  if (!tags.containsKey(project)) {
    tags[project] = {};
  }

  if (!tags[project].containsKey(order)) {
    tags[project][order] = [];
  }

  if (!tags[project][order].contains(release)) {
    tags[project][order].add(release);
  }

  await SharedPrefs().setJsonString('tags',tags);
}

Future<List<String>> getReleases(String project, String order) async {
  Map<String, dynamic> tags = await SharedPrefs().getJsonFromString('tags');

  if (tags.containsKey(project) && tags[project].containsKey(order)) {
    return List<String>.from(tags[project][order]);
  }

  return [];
}
