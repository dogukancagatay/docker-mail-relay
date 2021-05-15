variable "TAG" {
    default = "latest"
}

group "default" {
    targets = [ "app" ]
}

target "app" {
    context = "."
    platforms = [ "linux/amd64", "linux/arm/v7", "linux/arm64/v8" ]
    dockerfile = "Dockerfile"
    tags = [
        "docker.io/dcagatay/postfix-relay:${TAG}"
    ]
}
