import 'package:coffee_app/coffees/coffee_parameters.dart';
import 'package:coffee_app/themes/colors.dart';
import 'package:flutter/material.dart';

class CoffeeSizeButton extends StatefulWidget {
  final Coffee coffee;
  final Function(String) onSizeSelected;

  const CoffeeSizeButton({super.key, required this.coffee, required this.onSizeSelected});

  @override
  State<CoffeeSizeButton> createState() => CoffeeSizeButtonState();
}

class CoffeeSizeButtonState extends State<CoffeeSizeButton> {
  late String selectedSize;

  @override
  void initState() {
    super.initState();
    selectedSize = widget.coffee.priseM;
  }

  void selectSize(String size) {
    setState(() {
      selectedSize = size;
    });
    widget.onSizeSelected(size); // Відправляємо вибраний розмір назад
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 6),
            child: ElevatedButton(
              onPressed: () => selectSize(widget.coffee.priseS),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                fixedSize: MaterialStateProperty.all(const Size.fromHeight(43)),
                backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                  return selectedSize == widget.coffee.priseS
                      ? AppColors.perulight
                      : AppColors.white;
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                  return selectedSize == widget.coffee.priseS
                      ? AppColors.peru
                      : AppColors.darkGray;
                }),
                side: MaterialStateProperty.resolveWith<BorderSide>((states) {
                  return BorderSide(
                    color: selectedSize == widget.coffee.priseS
                        ? AppColors.peru
                        : AppColors.bordergray,
                  );
                }),
              ),
              child: const Text('S'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: ElevatedButton(
              onPressed: () => selectSize(widget.coffee.priseM),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                fixedSize: MaterialStateProperty.all(const Size.fromHeight(43)),
                backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                  return selectedSize == widget.coffee.priseM
                      ? AppColors.perulight
                      : AppColors.white;
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                  return selectedSize == widget.coffee.priseM
                      ? AppColors.peru
                      : AppColors.darkGray;
                }),
                side: MaterialStateProperty.resolveWith<BorderSide>((states) {
                  return BorderSide(
                    color: selectedSize == widget.coffee.priseM
                        ? AppColors.peru
                        : AppColors.bordergray,
                  );
                }),
              ),
              child: const Text('M'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: ElevatedButton(
              onPressed: () => selectSize(widget.coffee.priseL),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                fixedSize: MaterialStateProperty.all(const Size.fromHeight(43)),
                backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                  return selectedSize == widget.coffee.priseL
                      ? AppColors.perulight
                      : AppColors.white;
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                  return selectedSize == widget.coffee.priseL
                      ? AppColors.peru
                      : AppColors.darkGray;
                }),
                side: MaterialStateProperty.resolveWith<BorderSide>((states) {
                  return BorderSide(
                    color: selectedSize == widget.coffee.priseL
                        ? AppColors.peru
                        : AppColors.bordergray,
                  );
                }),
              ),
              child: const Text('L'),
            ),
          ),
        ),
      ],
    );
  }
}
