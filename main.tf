data "docker_image" "local_image" {
  name = "terrapy"
}

resource "docker_container" "terrapy" {
  name  = "terrapy"
  image = data.docker_image.local_image.name
  ports {
    internal = 8080
    external = 8080
  }
}


resource "null_resource" "wait_for_container" {
  depends_on = [docker_container.terrapy]
  provisioner "local-exec" {
    command = "sleep 10"
  }
}
