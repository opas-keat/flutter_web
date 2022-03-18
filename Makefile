run:
	flutter run -d chrome 

run_web:
	flutter run -d web-server --web-port 8888 --web-hostname 0.0.0.0

build_web:
	flutter build web --base-href "/flutter_web/"

deploy:
	firebase deploy --only hosting
