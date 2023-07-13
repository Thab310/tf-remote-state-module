variable "profile" {
  type        = string
  description = "AWS IAM profile name"
}
variable "owner" {
  type        = string
  description = "Email address of the Engineer that is provisioning the services"
}
variable "region" {
  type        = string
  description = "AWS deployment regions"
}
variable "bucket_name" {
  type        = string
  description = "aws unique name of s3 bucket"
}
