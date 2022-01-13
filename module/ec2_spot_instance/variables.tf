variable "key_name" {}
variable "count_instance" {}
variable "instance_type" {}
variable "ami_owner" {}
variable "ami_value" {}
variable "subnet_id" {}
variable "private_ip" {}
variable "instance_name" {}
variable "security_group_id" {}
variable "volume_size" {}
variable "iam_instance_profile" {
  default = null
}
variable "user_data" {
  default = null
}
variable "spot_price" {}
variable "associate_public_ip_address" {
  default = null
}
