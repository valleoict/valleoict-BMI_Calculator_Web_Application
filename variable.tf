variable "aws_region" {
  description = "AWS region"
  default     = "eu-west-2"
}

variable "keyname" {
  default     = "mern-"
  description = "Name of AWS key pair"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "db_username" {
  description = "Username for the RDS instance"
  default     = "mydb"
}

variable "db_password" {
  description = "Password for the RDS instance"
  default     = "mydbinstancepassword"
}

variable "db_name" {
  description = "Database name"
  default     = "mydb"
}

variable "instance_type" {
  description = "Instance type for the autoscaling group"
  default     = "t2.micro"
}

