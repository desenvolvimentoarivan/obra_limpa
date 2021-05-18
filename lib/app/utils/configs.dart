import 'exports.dart';
import 'package:intl/intl.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

const String rails_server =
    "https://mossoro.amigodopeito.dunnastecnologia.com.br/";

// const String rails_server = "http://192.168.1.4:3000/";

extension CustomMaskedTextController on MaskedTextController {
  String get withoutMask => this.text.replaceAll(RegExp(r'[^\d]'), '');
}

extension CustomFormatter on double {
  String get formatCurrency =>
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$')
          .format(this / 100)
          .replaceAll('-', '');
}

extension CustomInt on int {
  String get formatCurrency => this.toString().formatCurrency;
}

extension CustomString on String {
  String get formatCurrency => double.parse(this).formatCurrency;

  String get formatDate => DateFormat.yMd('pt-BR').format(DateTime.parse(this));

  String get formatPhone =>
      '(${this.substring(0, 2)}) ${this.substring(2, 3)} ${this.substring(3, 7)}-${this.substring(7, this.length)}';

  String get formatCpf =>
      '${this.substring(0, 3)}.${this.substring(3, 6)}.${this.substring(6, 9)}-${this.substring(9, 11)}';

  String get formatCnpj =>
      '${this.substring(0, 2)}.${this.substring(2, 5)}.${this.substring(5, 8)}/${this.substring(8, 12)}-${this.substring(12, 14)}';

  String get formatBillet =>
      '${this.substring(0, 5)}.${this.substring(5, 10)}\n${this.substring(10, 15)}.${this.substring(15, 21)}\n${this.substring(21, 26)}. ${this.substring(26, 32)}\n${this.substring(32, 33)}\n${this.substring(33, this.length)}';
}

extension CustomDateTime on DateTime {
  String get formatDate => DateFormat.yMd('pt-BR').format(this);

  String get formatDateToRequest => DateFormat('yyyy-MM-dd').format(this);
}

extension CustomText on Text {
  Text get bold => Text(this.data,
      style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.bold)
          .merge(this.style));

  Text get regular => Text(this.data,
      style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.normal)
          .merge(this.style));

  Text get semiBold => Text(this.data,
      style: TextStyle(fontFamily: 'OpenSans', fontWeight: FontWeight.w600)
          .merge(this.style));

  Text get center => Text(this.data,
      style: TextStyle().merge(this.style), textAlign: TextAlign.center);
}

extension CustomWidget on Widget {
  Widget get center => Center(child: this);

  Widget padding(double value) =>
      Padding(child: this, padding: EdgeInsets.all(value));

  Widget margin(double value) =>
      Container(child: this, margin: EdgeInsets.all(value));
}

class SizeConfig {
  static double _screenWidth;
  static double _screenHeight;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;

  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;
  static double widthMultiplier;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  static void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockSizeHorizontal = _screenWidth / 100;
    _blockSizeVertical = _screenHeight / 100;

    textMultiplier = _blockSizeVertical;
    imageSizeMultiplier = _blockSizeHorizontal;
    heightMultiplier = _blockSizeVertical;
    widthMultiplier = _blockSizeHorizontal;
  }

  static double hPadding() {
    return widthPercent(4);
  }

  static double hSpacing() {
    return widthPercent(6);
  }

  static double vPadding() {
    return heightPercent(1);
  }

  static double vSpacing() {
    return heightPercent(2);
  }

  static double widthPercent(double percent) {
    return widthMultiplier * percent;
  }

  static double heightPercent(double percent) {
    return heightMultiplier * percent;
  }
}

extension CustomTextStyle on TextStyle {
  TextStyle get bold => this.merge(TextStyle(fontWeight: FontWeight.bold));

  TextStyle get regular => this.merge(TextStyle(fontWeight: FontWeight.normal));

  TextStyle get semiBold => this.merge(TextStyle(fontWeight: FontWeight.w600));

  TextStyle get primaryColor => this.copyWith(color: CustomColors.primaryColor);

  TextStyle get secondaryColor =>
      this.copyWith(color: CustomColors.secondaryColor);

  TextStyle get white => this.copyWith(color: Colors.white);

  TextStyle get neutralColor100 =>
      this.copyWith(color: CustomColors.neutralColor100);

  TextStyle get neutralColor200 =>
      this.copyWith(color: CustomColors.neutralColor200);

  TextStyle get neutralColor300 =>
      this.copyWith(color: CustomColors.neutralColor300);

  TextStyle get customRed => this.copyWith(color: CustomColors.customRed);

  TextStyle get customGreen => this.copyWith(color: CustomColors.customGreen);

  TextStyle get customYellow => this.copyWith(color: CustomColors.customYellow);
}
