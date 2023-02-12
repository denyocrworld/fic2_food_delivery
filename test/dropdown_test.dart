import 'package:flutter_test/flutter_test.dart';
import 'package:hyper_ui/shared/widget/form/dropdown/dropdown.dart';

void main() {
  testWidgets('dropdown ...', (tester) async {
    tester.pumpWidget(
      QDropdownField(
        label: "Roles",
        hint: "Your roles",
        // validator: Validator.required,
        items: const [
          {
            "label": "Admin",
            "value": 1,
          },
          {
            "label": "Staff",
            "value": 2,
          }
        ],
        onChanged: (value, label) {},
      ),
    );
  });
}
