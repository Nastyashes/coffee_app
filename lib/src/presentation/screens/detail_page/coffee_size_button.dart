import 'package:coffee_app/src/entities/coffee_items.dart';
import 'package:coffee_app/src/presentation/bloc/bloc_coffee_counter/bloc_coffee_counter.dart';
import 'package:coffee_app/src/presentation/bloc/bloc_coffee_counter/event_coffee_counter.dart';
import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoffeeSizeButton extends StatefulWidget {
  final Coffee coffee;
  final Function(CoffeeSize) onSizeSelected;

  const CoffeeSizeButton({
    super.key,
    required this.coffee,
    required this.onSizeSelected,
  });

  @override
  State<CoffeeSizeButton> createState() => _CoffeeSizeButtonState();
}

class _CoffeeSizeButtonState extends State<CoffeeSizeButton> {
  CoffeeSize selectedSize = CoffeeSize.medium;
  void selectSize(CoffeeSize size) {
    setState(() {
      selectedSize = size;
    });

    BlocProvider.of<CoffeeCounterBloc>(context).add(
      UpdateCoffeeSize(coffee: widget.coffee, size: size),
    );

    widget.onSizeSelected(size);
  }

 @override
Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: CoffeeSize.values.map((size) {
      String label;
      switch (size) {
        case CoffeeSize.small:
          label = 'S';
          break;
        case CoffeeSize.medium:
          label = 'M';
          break;
        case CoffeeSize.large:
          label = 'L';
          break;
      }

      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0), // Відступи між кнопками
          child: ElevatedButton(
            onPressed: () => selectSize(size),
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  selectedSize == size ? AppColors.perulight : AppColors.white,
              foregroundColor:
                  selectedSize == size ? AppColors.peru : AppColors.darkGray,
              side: selectedSize == size
                  ? const BorderSide(color: AppColors.peru,)
                  : const BorderSide(color: AppColors.bordergray),
              minimumSize: const Size.fromHeight(43),
              shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
            )),
            child: Text(label),
          ),
        ),
      );
    }).toList(),
  );
}
}