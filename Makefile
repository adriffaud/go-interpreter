test:
	go test ./...

watch:
	inotifywait -m -r -e CLOSE_WRITE . | xargs -n1 -I{} go test ./...
