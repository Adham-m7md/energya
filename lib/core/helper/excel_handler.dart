import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:excel/excel.dart';

class ExcelHandler {
  /// لاختيار ملف Excel ورفعه
  Future<void> uploadExcelFile() async {
    try {
      // اختيار الملف باستخدام file_picker
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['xlsx'], // تحديد امتداد الملفات
      );

      if (result != null) {
        File file = File(result.files.single.path!);

        // الحصول على مسار التخزين الداخلي للتطبيق
        Directory appDirectory = await getApplicationDocumentsDirectory();
        String appFolderPath = appDirectory.path;

        // إنشاء مسار الملف في التخزين الداخلي
        String newFilePath = '$appFolderPath/uploaded_file.xlsx';

        // نقل الملف إلى مسار التطبيق
        await file.copy(newFilePath);

        print('تم حفظ الملف بنجاح في: $newFilePath');
      } else {
        print('لم يتم اختيار أي ملف');
      }
    } catch (e) {
      print('حدث خطأ أثناء رفع الملف: $e');
    }
  }

  /// لاستخراج البيانات من ملف Excel المخزن
  Future<void> exportExcelData() async {
    try {
      // الحصول على مسار التخزين الداخلي
      Directory appDirectory = await getApplicationDocumentsDirectory();
      String filePath = '${appDirectory.path}/uploaded_file.xlsx';

      // فتح الملف المخزن
      File file = File(filePath);
      if (!file.existsSync()) {
        print('الملف غير موجود!');
        return;
      }

      // قراءة الملف باستخدام حزمة excel
      var bytes = file.readAsBytesSync();
      var excel = Excel.decodeBytes(bytes);

      // طباعة محتوى الملف (كمثال)
      for (var table in excel.tables.keys) {
        print('Sheet: $table');
        var rows = excel.tables[table]!.rows;
        for (var row in rows) {
          print(row.map((cell) => cell?.value).toList());
        }
      }
    } catch (e) {
      print('حدث خطأ أثناء استخراج البيانات: $e');
    }
  }
}
