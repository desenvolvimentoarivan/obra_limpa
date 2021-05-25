import 'package:flutter/material.dart';
import 'package:obra_limpa/app/utils/exports.dart';
import 'package:oktoast/oktoast.dart';

enum NotificationType { info, success, danger, warning }

class NotificationService {
  static notify({
    @required String message,
    int timeout = 3,
    NotificationType type = NotificationType.info,
  }) {
    showToastWidget(
      Material(
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: InkWell(
            onTap: () => dismissAllToast(showAnim: true),
            child: Container(
              color: getColorByType(type),
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.vSpacing(),
                horizontal: SizeConfig.hPadding(),
              ),
              height: SizeConfig.heightPercent(8),
              width: SizeConfig.widthPercent(80),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                    width: SizeConfig.widthPercent(1),
                  ),
                  Expanded(
                    child: Text(
                      message,
                      style: TextStylish.h6.copyWith(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      handleTouch: true,
      duration: Duration(seconds: timeout),
      position: ToastPosition(
        align: Alignment(0, 0.83),
      ),
    );
  }

  static Color getColorByType(NotificationType type) {
    switch (type) {
      case NotificationType.info:
        return Colors.lightBlue;
      case NotificationType.success:
        return CustomColors.customGreen;
      case NotificationType.warning:
        return CustomColors.customYellow;
      case NotificationType.danger:
        return CustomColors.customRed;
      default:
        return CustomColors.primaryColor;
    }
  }

  static informationDialog({@required tittle, @required text}) {
    Get.defaultDialog(
      title: tittle,
      content: Text(text),
      confirm: FlatButton(
        child: Text(
          "Ok",
          style: TextStylish.h5,
        ),
        onPressed: () => Get.back(),
      ),
    );
  }

  static confirmDialog(
      {@required tittle, @required text, @required Function onConfirm}) {
    Get.defaultDialog(
      title: tittle,
      content: Text(text),
      confirm: FlatButton(
        child: Text(
          "Confirmar",
          style: TextStylish.h5,
        ),
        onPressed: () {
          Get.back();
          onConfirm();
        },
      ),
      cancel: FlatButton(
        child: Text(
          "Cancelar",
          style: TextStylish.h5,
        ),
        onPressed: () => Get.back(),
      ),
    );
  }
}
