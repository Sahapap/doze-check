
start:
	flutter run -d chrome --flavor dev --dart-define=ENV=dev

start-sit:
	flutter run -d chrome --flavor sit --dart-define=ENV=sit

build:
	flutter build apk --flavor dev --dart-define=ENV=dev

build-sit:
	flutter build apk --flavor sit --dart-define=ENV=sit

gen:
	flutter pub run build_runner build --delete-conflicting-outputs

lang:
	flutter gen-l10n

lint:
	dart fix --apply
