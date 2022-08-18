provider "docker" {
  host = "unix:///var/run/docker.sock"
}
data "docker_image" "my-site" {
  name = "shadowshotx/product-go-micro"
}
resource "docker_container" "my-site" {
  image = docker_image.shadowshotx/product-go-micro.latest
  name  = "my-site"
}
