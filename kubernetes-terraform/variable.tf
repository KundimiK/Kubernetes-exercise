variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  default     = "AKIAQMEY6LHTTTEXGZOQ"
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  default     = "5ZwxVqiBA8tz+spavKQlqcTU1O48pw8hazd21Ze+"
}

variable "region" {
  description = "The aws region"
  type        = string
  default     = "ap-south-1"
}

variable "availability_zones_count" {
  description = "The number of AZs."
  type        = number
  default     = 2
}

variable "project" {
  description = "Name to be used on all the resources as identifier. e.g. Project name, Application name"
  # description = "Name of the project deployment."
  type        = string
  default     = "demo"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "10.1.0.0/16"
}

variable "subnet_cidr_bits" {
  description = "The number of subnet bits for the CIDR. For example, specifying a value 8 for this parameter will create a CIDR with a mask of /24."
  type        = number
  default     = 8
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    "Project"     = "demo"
  }
}