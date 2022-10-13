# variables.tf

variable "organization_id" {
  type        = string
  description = "Your Aptible organization ID"
  default     = "2253ae98-d65a-4180-aceb-8419b7416677"
}

variable "environment_id" {
  type        = string
  description = "Your Aptible environment ID"
  default     = "5da0d2de-3001-4fc7-8aeb-9feeda628d95"
}

variable "aptible_token" {
  type        = string
  description = "Your Aptible auth token"
}

# TODO: implement split
variable "full_domain" {
  type        = string
  description = "Full domain (e.g. 'customer.com' for deploying onto demo-app.customer.com)"
}

variable "domain" {
  type        = string
  description = "Parent domain (e.g. 'customer.com' for deploying onto demo-app.customer.com)"
  default     = "aptible-test-grumpycat.com"
}

variable "subdomain" {
  type        = string
  description = "Subdomain (e.g. 'demo-app' for deploying onto demo-app.customer.com)"
  default     = "frank-demo"
}

variable "container_image" {
  type        = string
  description = "Docker image to deploy"
  default     = "quay.io/aptible/deploy-demo-app:latest"
}

variable "container_web_command" {
  type        = list
  description = "Array of arguments for the container's web service command"
  default     = ["gunicorn", "app:app", "-b", "0.0.0.0:5000", "--access-logfile", "-"]
}

variable "container_port" {
  type        = number
  description = "Port on which container is listening for HTTP"
  default     = 5000
}
