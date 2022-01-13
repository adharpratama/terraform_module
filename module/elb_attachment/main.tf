resource "aws_elb_attachment" "elb_attachment" {
  elb      = var.name
  instance = var.instance_id
}