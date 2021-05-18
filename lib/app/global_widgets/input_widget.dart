import 'package:obra_limpa/app/utils/exports.dart';

class InputWidget extends StatelessWidget {
  final String labelText;
  final Function(String) onChanged;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final String errorText;
  final TextInputType keyboardType;
  final controller;
  final onTap;
  final bool readOnly;
  final inputFormatters;

  const InputWidget({
    Key key,
    this.labelText,
    this.onChanged,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    this.errorText,
    this.keyboardType,
    this.controller,
    this.onTap,
    this.readOnly = false,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      onTap: onTap,
      controller: controller,
      obscureText: obscureText,
      onChanged: onChanged,
      style: TextStylish.h5.semiBold.neutralColor200,
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        errorText: errorText,
        errorStyle: TextStylish.h6.customRed,
        fillColor: CustomColors.fundoEdit,
        filled: true,
        labelText: labelText,
        labelStyle: TextStylish.h5.neutralColor200,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: CustomColors.borderEdit,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: CustomColors.borderEdit,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: CustomColors.borderEdit,
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: CustomColors.borderEdit,
            width: 2.0,
          ),
        ),
        hintStyle: TextStyle(fontSize: 17),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: EdgeInsets.all(20),
      ),
    );
  }
}
