variable "project_id" {
  description = "The GCP Project ID"
  type        = string
}

variable "region" {
  default = "us-central1"
}

variable "vpc_name" {
  default = "healthconnect-vpc-prod"
}