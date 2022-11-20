

resource "local_file" "rose" {
  filename = "/home/aniket/terraform/local/rose1.txt"
  content  = "we love roses1"
  file_permission = "0707"
  lifecycle {
    # create_before_destroy  = true
    #   prevent_destroy = true
      # ignore_changes = [
      #     content
      # ]
      
  }
}