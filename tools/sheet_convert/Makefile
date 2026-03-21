binaries := mktrainerdata mkitemdata
.PHONY: all clean
goflags := -ldflags="-s -w" -gcflags="-l" -trimpath

all: $(binaries)

clean:
	rm -f $(binaries)

mktrainerdata: cmd/mktrainerdata/main.go
	CGO_ENABLED=0 go build -o $@ $<

mkitemdata: cmd/mkitemdata/main.go
	CGO_ENABLED=0 go build -o $@ $<


mkwilddata: cmd/mkwilddata/main.go
	CGO_ENABLED=0 go build -o $@ $<

