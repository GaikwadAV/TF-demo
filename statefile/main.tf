resource "local_file" "data" {
  filename = "/home/aniket/terraform/statefile/data.txt"
  content = "this is data file"
}