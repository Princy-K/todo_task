import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_task/l10n/l10n.dart';
import 'package:todo_task/provider/locale_provider.dart';

class LanguagePickerWidget extends StatelessWidget {
  const LanguagePickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale ?? const Locale('en');

    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: locale,
        icon: Container(width: 12),
        items: L10n.all.map(
          (locale) {
            final flag = L10n.getFlag(locale.languageCode);
            return DropdownMenuItem(
              child: Row(
                children: [
                  Text(
                    flag,
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(width: 16,),
                  Text(
                    locale.languageCode,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              value: locale,
              onTap: () {
                provider.setLocale(locale);
              },
            );
          },
        ).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
