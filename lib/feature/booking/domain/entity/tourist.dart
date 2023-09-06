import 'dart:ffi';

class Tourist {
  final String? name;
  final String? surname;
  final String? birthDate;
  final String? citizenship;
  final String? internationalPassportNumber;
  final String? validityInternationalPassport;

  Tourist({
    required this.name,
    required this.surname,
    required this.birthDate,
    required this.citizenship,
    required this.internationalPassportNumber,
    required this.validityInternationalPassport,
  });

  factory Tourist.empty() => Tourist(
        name: null,
        surname: null,
        birthDate: null,
        citizenship: null,
        internationalPassportNumber: null,
        validityInternationalPassport: null,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tourist &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          surname == other.surname &&
          birthDate == other.birthDate &&
          citizenship == other.citizenship &&
          internationalPassportNumber == other.internationalPassportNumber &&
          validityInternationalPassport == other.validityInternationalPassport;

  @override
  int get hashCode =>
      name.hashCode ^
      surname.hashCode ^
      birthDate.hashCode ^
      citizenship.hashCode ^
      internationalPassportNumber.hashCode ^
      validityInternationalPassport.hashCode;
}
