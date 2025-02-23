import 'package:flutter/material.dart';

class EditableField extends StatelessWidget {
  final String label;
  final String value;
  final void Function(String) onEdited;

  const EditableField({
    super.key,
    required this.label,
    required this.value,
    required this.onEdited,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Spacer(),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        IconButton(
          onPressed: () {
            _showEditPopup(context);
          },
          icon: const Icon(Icons.edit),
        ),
      ],
    );
  }

  void _showEditPopup(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            constraints: const BoxConstraints(
              maxWidth: 500,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 24),
                Icon(
                  Icons.edit,
                  color: Theme.of(context).colorScheme.primary,
                  size: 72.0,
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: textEditingController,
                  maxLength: 10,
                  validator: (value) {
                    return null;
                  },
                  onSaved: (value) {

                  },
                  onChanged: (value) {

                  },
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.outlineVariant,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: value,
                    hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    counterText: '',
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    onEdited(textEditingController.text);
                  },
                  child: const Text('확인'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
