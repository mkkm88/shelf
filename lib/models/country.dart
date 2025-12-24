class Country {
  final String name;
  final String dialCode;
  final String flag;

  Country({required this.name, required this.dialCode, required this.flag});
}

final List<Country> countryList = [
  Country(name: 'India', dialCode: '+91', flag: '🇮🇳'),
  Country(name: 'USA', dialCode: '+1', flag: '🇺🇸'),
  Country(name: 'UK', dialCode: '+44', flag: '🇬🇧'),
];
