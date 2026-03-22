binaries := mkdata
.PHONY: all clean
goflags := -ldflags="-s -w" -gcflags="-l" -trimpath

all: $(binaries)

clean:
	rm -f $(binaries)

mkdata: cmd/mkdata/main.go
	CGO_ENABLED=0 go build -o $@ $<
