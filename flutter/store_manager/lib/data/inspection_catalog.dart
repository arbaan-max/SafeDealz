import 'package:safedealz_store_manager/data/api/models/catalog.dart';
import 'package:safedealz_store_manager/data/api/models/catalog_field.dart';

class InspectionField {
  const InspectionField(this.key, this.label, this.options, {this.appleOnly = false});
  final String key;
  final String label;
  final List<String> options;
  final bool appleOnly;
}

InspectionField fieldFromCatalog(CatalogField field) => InspectionField(
      field.key,
      field.label,
      field.options,
      appleOnly: field.appleOnly == true,
    );

List<InspectionField> fieldsForStep(Catalog catalog, int step, {required bool apple}) {
  final keys = catalog.inspectionSteps[step].keys;
  return [
    for (final key in keys)
      if (apple || !(catalog.inspectionFields.firstWhere((field) => field.key == key).appleOnly ?? false))
        fieldFromCatalog(catalog.inspectionFields.firstWhere((field) => field.key == key)),
  ];
}

String batteryBand(int? health) {
  final value = health ?? 0;
  if (value > 85) return 'Above 85% / Good';
  if (value >= 80) return '80–85% / Moderate';
  if (value > 0) return 'Below 80% / Service or swollen';
  return 'Not available';
}
