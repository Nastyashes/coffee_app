import 'package:coffee_app/src/users/users.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/src/presentation/themes/colors.dart';
import 'package:coffee_app/src/presentation/themes/fonts.dart';

class AddressPage extends StatefulWidget {
  final Users user;
  const AddressPage({super.key, required this.user});

  @override
  AddressPageState createState() => AddressPageState();
}

class AddressPageState extends State<AddressPage> {
  late String address;
  late String note;

  @override
  void initState() {
    super.initState();
    address = widget.user.address;
    note = widget.user.note;
  }

  void _editAddress() async {
    String? newAddress = await _showInputDialog('Edit Address', address);
    if (newAddress != null && newAddress.isNotEmpty) {
      setState(() {
        address = newAddress;
      });
    }
  }

  void _addNote() async {
    String? newNote = await _showInputDialog('Add Note', note);
    if (newNote != null && newNote.isNotEmpty) {
      setState(() {
        note = newNote;
      });
    }
  }

  Future<String?> _showInputDialog(String title, String initialValue) async {
    TextEditingController controller =
        TextEditingController(text: initialValue);

    return showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: "Enter your text here",
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'CANCEL',
                style: AppFonts.title3.peru,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('OK', style: AppFonts.title3.peru),
              onPressed: () {
                Navigator.of(context).pop(controller.text);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Delivery Address', style: AppFonts.title3.darkGrey),
          Padding(
            padding: const EdgeInsets.only(bottom: 1),
            child: Text(user.name, style: AppFonts.title4.darkGrey),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(user.address, style: AppFonts.body1),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              OutlinedButton.icon(
                style: const ButtonStyle(
                  side: WidgetStatePropertyAll(
                    BorderSide(color: AppColors.bordergray),
                  ),
                ),
                onPressed: _editAddress,
                icon: const ImageIcon(
                  AssetImage('assets/icons/edit.png'),
                  color: AppColors.editbutton,
                ),
                label: Text(
                  'Edit Address',
                  style: AppFonts.body1.editbutton,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: OutlinedButton.icon(
                  style: const ButtonStyle(
                    side: WidgetStatePropertyAll(
                      BorderSide(color: AppColors.bordergray),
                    ),
                  ),
                  onPressed: _addNote,
                  icon: const ImageIcon(
                    AssetImage('assets/icons/note.png'),
                    color: AppColors.editbutton,
                  ),
                  label: Text(
                    'Add Note',
                    style: AppFonts.body1.editbutton,
                  ),
                ),
              ),
            ],
          ),
          if (note.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Note:', style: AppFonts.title4.darkGrey),
                  Text(note, style: AppFonts.body1),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
