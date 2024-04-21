import "package:intl/intl.dart" show DateFormat;

class DateUtil {
  static String? getCurrentDateTime(){
    return DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
  }

  static DateTime? convertToDATE(String input) {
    try {
      var d = DateFormat("yyyy-MM-dd").parseStrict(input);
      return d;
    } catch (e) {
      return null;
    }
  }

  static bool isDate(String input) {
    try {
      var d = DateFormat("yyyy-MM-dd").parseStrict(input);
      return true;
    } catch (e) {
      return false;
    }
  }

  static bool isValidDate(String dt) {
    if (dt.isEmpty || !dt.contains("-") || dt.length < 10) return false;
    List<String>dtT=dt.split("-");
    var d=DateTime(int.parse(dtT[0]),int.parse(dtT[1]),int.parse(dtT[2]));
     return isDate(dt)&&d.isAfter(DateTime.now());
  }
}
