output "instance_id" {
  value = [for i in aws_spot_instance_request.spot_instance_request : i.spot_instance_id]
}
