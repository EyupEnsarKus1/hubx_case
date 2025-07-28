import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../design_system/theme/hubx_colors.dart';

class HubxTextField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final bool showObscureTextIcon;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Function()? onTap;
  final bool autofocus;
  final Function(String)? onChanged;
  final bool readOnly;
  final Function(String)? onFieldSubmitted;
  final Color? fillColor;
  final bool filled;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final String? labelText;
  final Color? labelColor;
  final bool enabled;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLength;
  final double? height;
  final bool expands;
  final int? maxLines;
  final int? minLines;
  final TextAlign? textAlign;
  final TextAlignVertical? textAlignVertical;
  final double? borderRadius;
  final bool showBorder;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final Color? errorBorderColor;
  final Color? disabledBorderColor;
  final TextStyle? errorStyle;
  final TextDirection? textDirection;
  final AutovalidateMode? autovalidateMode;

  const HubxTextField({
    super.key,
    required this.controller,
    this.focusNode,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.showObscureTextIcon = false,
    this.validator,
    this.textInputAction,
    this.keyboardType,
    this.inputFormatters,
    this.onTap,
    this.autofocus = false,
    this.onChanged,
    this.readOnly = false,
    this.onFieldSubmitted,
    this.fillColor,
    this.filled = true,
    this.hintStyle,
    this.labelStyle,
    this.labelText,
    this.labelColor,
    this.enabled = true,
    this.contentPadding,
    this.maxLength,
    this.height,
    this.expands = false,
    this.maxLines = 1,
    this.minLines,
    this.textAlign,
    this.textAlignVertical,
    this.borderRadius,
    this.showBorder = true,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.disabledBorderColor,
    this.errorStyle,
    this.textDirection,
    this.autovalidateMode,
  });

  @override
  State<HubxTextField> createState() => _HubxTextFieldState();
}

class _HubxTextFieldState extends State<HubxTextField> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 18.r),
      borderSide: BorderSide(width: .2, color: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final borderColor = widget.enabledBorderColor ?? HubxColors.textFieldBorderColor.withOpacity(.25);
    final focusedColor = widget.focusedBorderColor ?? HubxColors.textFieldBorderColor.withOpacity(.25);
    final errorColor = widget.errorBorderColor ?? HubxColors.textFieldBorderColor.withOpacity(.25);
    final disabledColor = widget.disabledBorderColor ?? HubxColors.textFieldBorderColor.withOpacity(.25);
    final labelStyle =
        widget.labelStyle ?? theme.textTheme.bodyMedium?.copyWith(color: widget.labelColor ?? (isDark ? HubxColors.white70 : HubxColors.hintText));
    final hintStyle = widget.hintStyle ?? theme.textTheme.bodySmall?.copyWith(color: HubxColors.hintText);
    final errorStyle = widget.errorStyle ?? theme.textTheme.bodySmall?.copyWith(color: errorColor, fontWeight: FontWeight.w500);

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: widget.height ?? 44.h,
        maxHeight: widget.height ?? 44.h,
      ),
      child: TextFormField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        obscureText: _isObscured,
        maxLines: _isObscured ? 1 : (widget.expands ? null : widget.maxLines),
        minLines: _isObscured ? 1 : widget.minLines,
        expands: widget.expands,
        enabled: widget.enabled,
        readOnly: widget.readOnly,
        onChanged: widget.onChanged,
        autofocus: widget.autofocus,
        onTap: widget.onTap,
        autovalidateMode: widget.autovalidateMode,
        textInputAction: widget.textInputAction,
        keyboardType: widget.keyboardType,
        onTapOutside: (_) {
          FocusScope.of(context).unfocus();
        },
        inputFormatters: widget.inputFormatters,
        onFieldSubmitted: widget.onFieldSubmitted,
        maxLength: widget.maxLength,
        textAlign: widget.textAlign ?? TextAlign.start,
        textAlignVertical: widget.textAlignVertical,
        textDirection: widget.textDirection,
        style: theme.textTheme.bodyLarge?.copyWith(color: HubxColors.hintText),
        cursorColor: HubxColors.primary,
        validator: widget.validator,
        decoration: InputDecoration(
          counterText: "",
          enabled: widget.enabled,
          filled: true,
          fillColor: HubxColors.grey100,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.showObscureTextIcon
              ? GestureDetector(
                  onTap: () => setState(() => _isObscured = !_isObscured),
                  child: Icon(
                    _isObscured ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                    color: isDark ? HubxColors.white70 : HubxColors.hintText,
                  ),
                )
              : widget.suffixIcon,
          border: widget.showBorder ? _buildBorder(borderColor) : InputBorder.none,
          focusedBorder: widget.showBorder ? _buildBorder(focusedColor) : InputBorder.none,
          enabledBorder: widget.showBorder ? _buildBorder(borderColor) : InputBorder.none,
          disabledBorder: widget.showBorder ? _buildBorder(disabledColor) : InputBorder.none,
          errorBorder: widget.showBorder ? _buildBorder(errorColor) : InputBorder.none,
          focusedErrorBorder: widget.showBorder ? _buildBorder(errorColor) : InputBorder.none,
          errorStyle: errorStyle,
          hintText: widget.hintText,
          hintStyle: hintStyle,
          labelText: widget.labelText,
          labelStyle: labelStyle,
          contentPadding: widget.contentPadding,
        ),
      ),
    );
  }
}
