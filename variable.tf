variable "region" {
  type    = string
  default = "us-east-1"
}

variable "VMImage" {
  type    = string
  default = "ami-0b5eea76982371e91"
}

variable "VMSize" {
  type    = string
  default = "t2.micro"
}

variable "VmName" {
  type    = list(any)
  default = ["Dev", "Uat", "Production"]
}

variable "sg-http" {
  type        = number
  description = "applied for http port "
  default     = 80
}

variable "sg-ssh" {
  type        = number
  description = "applied for SSH remote connection"
  default     = 22
}

variable "vmspin" {
  type        = number
  description = "created for 3 vm "
  default     = 3

}

