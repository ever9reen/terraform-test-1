
variable "region" {
  description = "생성될 리전을 입력 합니다. e.g: ap-northeast-2"
  type        = string
  default     = "ap-northeast-2"
}

variable "name" {
  description = "VPC 이름을 입력합니다."
  type        = string
  default     = "vpc-jenkins-demo"
}

variable "vpc_cidr" {
  description = "VPC 사이더를 입력합니다."
  type        = string
  default     = "172.28.0.0/16"
}

variable "public_subnets" {
  description = "생성될 공개 서브넷 목록을 입력합니다."
  type = list(object({
    zone = string
    cidr = string
  }))
  default = [
    {
      zone = "ap-northeast-2a"
      cidr = "172.28.1.0/24"
    },
    {
      zone = "ap-northeast-2b"
      cidr = "172.28.2.0/24"
    },
    {
      zone = "ap-northeast-2c"
      cidr = "172.28.3.0/24"
    },
  ]
}

variable "private_subnets" {
  description = "생성될 비공개 서브넷 목록을 입력합니다."
  type = list(object({
    zone = string
    cidr = string
  }))
  default = [
    {
      zone = "ap-northeast-2a"
      cidr = "172.28.4.0/24"
    },
    {
      zone = "ap-northeast-2b"
      cidr = "172.28.5.0/24"
    },
    {
      zone = "ap-northeast-2c"
      cidr = "172.28.6.0/24"
    },
  ]
}

variable "tags" {
  default = {
    "deployed_by" = "terraform"
  }
}