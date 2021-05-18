import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool enabled;
  final bool loading;
  final TextStyle textStyle;
  final buttonColor;
  final borderColor;
  final bool hasShadow;

  const ButtonWidget({
    Key key,
    this.text,
    @required this.onTap,
    this.enabled = true,
    this.loading = false,
    this.textStyle,
    this.buttonColor,
    this.borderColor,
    this.hasShadow = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var child;
    if (text != null)
      child =
          Text(text, style: textStyle ?? TextStylish.h4.bold.neutralColor200);
    if (loading) {
      child = Theme(
        data: ThemeData(
          cupertinoOverrideTheme:
              CupertinoThemeData(brightness: Brightness.dark),
        ),
        child: CupertinoActivityIndicator(radius: 11),
      );
    }
    return Container(
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: 2.5,
          ),
        ),
        child: child,
        disabledColor:
            loading ? CustomColors.secondaryColor : CustomColors.terciaryColor,
        color: buttonColor ?? Colors.white,
        onPressed: (!enabled || loading) ? null : onTap,
      ),
      //width: 250,
      width: SizeConfig.widthPercent(82),
      height: SizeConfig.heightPercent(8),
    );
  }
}
