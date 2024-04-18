group "default" {
	targets = ["all"]
}

target "all" {
	platforms = ["linux/arm64"]
    //, "linux/amd64", "linux/ppc64le", "linux/s390x", "linux/386", "linux/arm/v7", "linux/arm/v6"

    labels = {
        "org.opencontainers.image.source" = "https://github.com/username/myapp"
        "com.docker.image.source.entrypoint" = "Dockerfile"
    }
}