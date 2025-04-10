resource "docker_image" "sample-app" {
  name         = "dhanushnadar/my-node-app:build-3"
  keep_locally = true
}

resource "docker_container" "sample-app-container" {
  name  = "node-js-app"
  image = docker_image.sample-app.image_id
  ports {
    internal = 3000
    external = 3000
  }
}
