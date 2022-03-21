resource "google_compute_instance" "my_vm" {
    project = 
    name = "my_vm"
    machine_type = "n1-standard-1"
    zone = "us-central-1a"
    boot_disk {
      initialize_params {
          image = "debian-cloud/debian-9"
      }
    }
    network_interface {
      network = "default"
      access_config{
      }
    }
}