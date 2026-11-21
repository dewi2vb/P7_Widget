import 'package:flutter_test/flutter_test.dart';
import 'package:widget_dasar/main.dart';

void main() {
  testWidgets('Memverifikasi widget_dasar main app merender dengan baik',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verifikasi judul AppBar Demo Action Button
    expect(find.text('Demo Action Button'), findsOneWidget);
  });
}
