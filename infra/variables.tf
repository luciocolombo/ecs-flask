variable "region" {
  type        = string
  description = "AWS region for all resources"
  default     = "ap-southeast-1"
}

variable "project_name" {
    type = string
    description = "project name"
    default = "ecs-flask"
}
