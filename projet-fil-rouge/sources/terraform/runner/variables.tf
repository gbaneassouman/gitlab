variable "instancetype" {
  type        = string
  description = "definir le type de l'instance"
  default     = "t2.medium"
}

variable "aws_common_tag" {
  type        = map(any)
  description = "definir le tag de l'image"
  default = {
    Name = "gitlab-ci-runner"
  }
}

variable "region" {
  type        = string
  description = "set aws region"
  default     = "us-east-1"
}

variable "aws_access_key" {
  type    = string
  default = ""
}

variable "aws_secret_key" {
  type    = string
  default = ""
}

variable "aws_key_name" {
  type    = string
  default = "devops-gbane"
}

variable "aws_sg_name" {
  type        = string
  description = "set Dev security group name"
  default     = "gitlab-ci-runner-sg"

}

variable "aws_tfstate" {
  type        = string
  description = "Dev tfstate"
  default     = "gitlab-ci-runner.tfstate"
}

variable "aws_s3" {
  type        = string
  description = "Dev S3"
  default     = "gitlab-ci-runner-bucket"
}

variable "username" {
  type = string
  default = "ubuntu"
}

variable "gitlab-runner-token" {
  type = string
  description = "set gitlab-ci runner token"
  default = ""
  
}