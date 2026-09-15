import 'package:flutter/material.dart';
import 'package:safedealz_store_manager/core/utils/theme.dart';
import 'package:safedealz_store_manager/view/widgets/sd_icons.dart';

class SdNotice extends StatelessWidget {
  const SdNotice(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: AppTheme.selected, borderRadius: BorderRadius.circular(11)),
      child: Text(text, style: const TextStyle(color: AppTheme.skyHover, fontSize: 12, height: 1.6)),
    );
  }
}

class SdCard extends StatelessWidget {
  const SdCard({super.key, required this.child, this.tint = false, this.onTap});
  final Widget child;
  final bool tint;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final card = Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: tint ? AppTheme.selected : AppTheme.surface,
        border: Border.all(color: tint ? const Color(0xFFB9E0F7) : AppTheme.border),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Color(0x140369A1), blurRadius: 18, offset: Offset(0, 8)),
        ],
      ),
      child: child,
    );
    if (onTap == null) return card;
    return Material(color: Colors.transparent, child: InkWell(onTap: onTap, borderRadius: BorderRadius.circular(16), child: card));
  }
}

class SdSectionHead extends StatelessWidget {
  const SdSectionHead(this.title, {super.key, this.action, this.onAction});
  final String title;
  final String? action;
  final VoidCallback? onAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Expanded(child: Text(title, style: Theme.of(context).textTheme.titleMedium)),
          if (action != null)
            TextButton(onPressed: onAction, child: Text(action!, style: const TextStyle(fontWeight: FontWeight.w700))),
        ],
      ),
    );
  }
}

class SdStatusBadge extends StatelessWidget {
  const SdStatusBadge(this.label, {super.key, this.tone = 'sky'});
  final String label;
  final String tone;
  @override
  Widget build(BuildContext context) {
    final colors = switch (tone) {
      'green' => (const Color(0xFFEAF7EF), const Color(0xFF166534)),
      'amber' => (const Color(0xFFFFF4DF), const Color(0xFF92400E)),
      'purple' => (const Color(0xFFF3E8FF), const Color(0xFF6D38C7)),
      _ => (AppTheme.selected, AppTheme.skyHover),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(color: colors.$1, borderRadius: BorderRadius.circular(7)),
      child: Text(label, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: colors.$2)),
    );
  }
}

class SdDetailRow extends StatelessWidget {
  const SdDetailRow(this.label, this.value, {super.key});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text(label, style: const TextStyle(fontSize: 12, color: AppTheme.muted))),
          Expanded(child: Text(value, textAlign: TextAlign.right, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700))),
        ],
      ),
    );
  }
}

class SdPersonRow extends StatelessWidget {
  const SdPersonRow({super.key, required this.name, this.subtitle = 'Verified vendor'});
  final String name;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    final initials = name
        .split(' ')
        .where((part) => part.isNotEmpty)
        .take(2)
        .map((part) => part[0].toUpperCase())
        .join();
    return Row(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: AppTheme.selected,
          foregroundColor: AppTheme.skyHover,
          child: Text(initials, style: const TextStyle(fontWeight: FontWeight.w800)),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontWeight: FontWeight.w800)),
              Text(subtitle, style: const TextStyle(fontSize: 12, color: AppTheme.muted)),
            ],
          ),
        ),
        const Icon(SdIcons.verified, color: AppTheme.skyBlue),
      ],
    );
  }
}

class SdListRow extends StatelessWidget {
  const SdListRow({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.badge,
  });
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final String? badge;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(color: AppTheme.selected, borderRadius: BorderRadius.circular(10)),
              child: Icon(icon, size: 18, color: AppTheme.skyBlue),
            ),
            const SizedBox(width: 11),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 3),
                  Text(subtitle, style: const TextStyle(fontSize: 11, color: AppTheme.muted)),
                ],
              ),
            ),
            if (badge != null)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(badge!, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: AppTheme.skyHover)),
              ),
            const Icon(SdIcons.caretRight, color: AppTheme.muted),
          ],
        ),
      ),
    );
  }
}

class SdSearchField extends StatelessWidget {
  const SdSearchField({super.key, required this.hint, required this.onChanged});
  final String hint;
  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.symmetric(horizontal: 11),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        border: Border.all(color: AppTheme.border),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Row(
        children: [
          const Icon(SdIcons.search, size: 18, color: AppTheme.muted),
          const SizedBox(width: 9),
          Expanded(
            child: TextField(
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                filled: false,
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SdStatButton extends StatelessWidget {
  const SdStatButton({super.key, required this.icon, required this.value, required this.label, required this.onTap});
  final IconData icon;
  final String value;
  final String label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SdCard(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppTheme.skyBlue, size: 19),
          const SizedBox(height: 8),
          Text(value, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800, letterSpacing: -0.8)),
          Text(label, style: const TextStyle(fontSize: 11, color: AppTheme.muted)),
        ],
      ),
    );
  }
}

class SdDeviceCard extends StatelessWidget {
  const SdDeviceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.footerLabel,
    required this.footerValue,
    required this.onTap,
  });
  final String title;
  final String subtitle;
  final String status;
  final String footerLabel;
  final String footerValue;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final tone = RegExp(r'paid|picked|accepted', caseSensitive: false).hasMatch(status)
        ? 'green'
        : RegExp(r'expired|re-auction', caseSensitive: false).hasMatch(status)
            ? 'amber'
            : 'purple';
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SdCard(
        onTap: onTap,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(color: AppTheme.selected, borderRadius: BorderRadius.circular(14)),
                  child: const Icon(SdIcons.devices, color: AppTheme.skyBlue),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
                      const SizedBox(height: 2),
                      Text(subtitle, style: const TextStyle(fontSize: 12, color: AppTheme.muted)),
                      const SizedBox(height: 6),
                      SdStatusBadge(status, tone: tone),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 13),
            const Divider(height: 1, color: Color(0xFFE2E7F0)),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: Text(footerLabel, style: const TextStyle(fontSize: 11, color: AppTheme.muted))),
                Text(footerValue, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w800, letterSpacing: -0.4)),
                const Icon(SdIcons.caretRight, color: AppTheme.muted),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SdActionBar extends StatelessWidget {
  const SdActionBar({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.surface,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(17, 12, 17, 17),
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: AppTheme.border))),
        child: SafeArea(top: false, child: child),
      ),
    );
  }
}

class SdChipBar extends StatelessWidget {
  const SdChipBar({super.key, required this.chips, required this.selected, required this.onSelected});
  final List<(String, String)> chips;
  final String selected;
  final ValueChanged<String> onSelected;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          for (final chip in chips)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: FilterChip(
                label: Text(chip.$2),
                selected: selected == chip.$1,
                onSelected: (_) => onSelected(chip.$1),
              ),
            ),
        ],
      ),
    );
  }
}

class SdStatusOrb extends StatelessWidget {
  const SdStatusOrb({super.key, required this.icon, this.tone = 'sky'});
  final IconData icon;
  final String tone;
  @override
  Widget build(BuildContext context) {
    final colors = switch (tone) {
      'green' => (const Color(0xFFDCFCE7), const Color(0xFF166534)),
      'amber' => (const Color(0xFFFEF3C7), const Color(0xFF92400E)),
      _ => (AppTheme.selected, AppTheme.skyBlue),
    };
    return Center(
      child: Container(
        width: 64,
        height: 64,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(color: colors.$1, shape: BoxShape.circle),
        child: Icon(icon, color: colors.$2, size: 28),
      ),
    );
  }
}

class SdAvatar extends StatelessWidget {
  const SdAvatar(this.label, {super.key, this.large = false});
  final String label;
  final bool large;
  @override
  Widget build(BuildContext context) {
    final size = large ? 72.0 : 40.0;
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: AppTheme.selected, shape: BoxShape.circle),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: large ? 22 : 13,
          color: AppTheme.skyHover,
        ),
      ),
    );
  }
}

class SdSteps extends StatelessWidget {
  const SdSteps({super.key, required this.current, this.total = 7});
  final int current;
  final int total;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          for (var i = 1; i <= total; i++) ...[
            Expanded(
              child: Container(
                height: 4,
                decoration: BoxDecoration(
                  color: i <= current ? AppTheme.skyBlue : const Color(0xFFD7E8F2),
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
            ),
            if (i < total) const SizedBox(width: 4),
          ],
        ],
      ),
    );
  }
}

class SdFlowProgress extends StatelessWidget {
  const SdFlowProgress({
    super.key,
    required this.current,
    required this.total,
    required this.label,
  });
  final int current;
  final int total;
  final String label;

  @override
  Widget build(BuildContext context) {
    final value = total == 0 ? 0.0 : current / total;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                ),
              ),
              Text(
                '$current of $total',
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppTheme.muted),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(99),
            child: LinearProgressIndicator(
              value: value,
              minHeight: 6,
              backgroundColor: const Color(0xFFD7E8F2),
              color: AppTheme.skyBlue,
            ),
          ),
        ],
      ),
    );
  }
}

class SdOptionTiles extends StatelessWidget {
  const SdOptionTiles({
    super.key,
    required this.options,
    required this.selected,
    required this.onSelected,
  });
  final List<String> options;
  final String? selected;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final option in options)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => onSelected(option),
                borderRadius: BorderRadius.circular(14),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  curve: Curves.easeOut,
                  constraints: const BoxConstraints(minHeight: 48),
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  decoration: BoxDecoration(
                    color: selected == option ? AppTheme.selected : AppTheme.surface,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: selected == option ? AppTheme.skyBlue : AppTheme.border,
                      width: selected == option ? 1.5 : 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selected == option ? AppTheme.skyBlue : Colors.transparent,
                          border: Border.all(
                            color: selected == option ? AppTheme.skyBlue : AppTheme.muted,
                          ),
                        ),
                        child: selected == option
                            ? const Icon(SdIcons.check, size: 12, color: Colors.white)
                            : null,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(option, style: const TextStyle(fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class SdMediaSlot extends StatelessWidget {
  const SdMediaSlot({
    super.key,
    required this.label,
    required this.ready,
    required this.onTap,
    this.wide = false,
  });
  final String label;
  final bool ready;
  final VoidCallback onTap;
  final bool wide;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(minHeight: wide ? 92 : 88),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: ready ? const Color(0xFFEAF7EF) : AppTheme.surface,
          border: Border.all(color: ready ? const Color(0xFF86EFAC) : AppTheme.border),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(wide ? SdIcons.video : SdIcons.camera, color: AppTheme.skyBlue),
            const SizedBox(height: 8),
            Text(label, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 13)),
            Text(ready ? 'Captured' : 'Tap to capture', style: const TextStyle(fontSize: 11, color: AppTheme.muted)),
          ],
        ),
      ),
    );
  }
}

class SdScrollBody extends StatelessWidget {
  const SdScrollBody({super.key, required this.children, this.controller});
  final List<Widget> children;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }
}

class SdQuietButton extends StatelessWidget {
  const SdQuietButton({super.key, required this.label, required this.onPressed});
  final String label;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.w700, color: AppTheme.muted)),
    );
  }
}

class SdFieldLabel extends StatelessWidget {
  const SdFieldLabel(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(text, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppTheme.ink)),
    );
  }
}

class SdChoiceRow<T> extends StatelessWidget {
  const SdChoiceRow({
    super.key,
    required this.options,
    required this.selected,
    required this.onSelected,
  });
  final List<(T, String)> options;
  final T selected;
  final ValueChanged<T> onSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < options.length; i++)
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: i == options.length - 1 ? 0 : 8),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => onSelected(options[i].$1),
                  borderRadius: BorderRadius.circular(11),
                  child: Container(
                    height: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: selected == options[i].$1 ? AppTheme.selected : AppTheme.surface,
                      border: Border.all(
                        color: selected == options[i].$1 ? AppTheme.skyBlue : const Color(0xFFCFD6E3),
                      ),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Text(
                      options[i].$2,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: selected == options[i].$1 ? AppTheme.skyHover : AppTheme.ink,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

String initialsFor(String name) {
  final parts = name.trim().split(RegExp(r'\s+')).where((part) => part.isNotEmpty).toList();
  if (parts.isEmpty) return 'SM';
  if (parts.length == 1) {
    final value = parts.first;
    return value.substring(0, value.length >= 2 ? 2 : 1).toUpperCase();
  }
  return '${parts.first[0]}${parts.last[0]}'.toUpperCase();
}

Map<String, dynamic> asStringMap(dynamic value) =>
    value is Map ? Map<String, dynamic>.from(value) : const <String, dynamic>{};
