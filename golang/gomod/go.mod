module example.com/benchmark

go 1.18

require (
	cloud.google.com/go/storage v1.28.1
	github.com/fsouza/fake-gcs-server v1.42.2
	github.com/in-toto/in-toto-golang v0.3.4-0.20211211042327-af1f9fb822bf
	github.com/neo4j/neo4j-go-driver/v4 v4.4.4
	github.com/secure-systems-lab/go-securesystemslib v0.4.0
	github.com/spf13/cobra v1.8.0
	go.uber.org/zap v1.24.0
	google.golang.org/api v0.104.0
)

replace cloud.google.com/go/storage => cloud.google.com/go/storage v1.41.0
exclude github.com/fsouza/fake-gcs-server v1.42.2