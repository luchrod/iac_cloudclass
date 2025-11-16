###########################################################
# Provider - Credenciais e Região
###########################################################

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  token      = var.aws_session_token
  region     = var.aws_region
}

###########################################################
# Versões e requisitos
###########################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.6"
}

###########################################################
# Variáveis do projeto
###########################################################

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "aws_session_token" {
  description = "AWS session token (opcional)"
  type        = string
  default     = ""
}

variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI para as instâncias EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instância"
  type        = string
  default     = "t3.micro"
}

variable "azs" {
  description = "Lista de zonas de disponibilidade"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "hosted_zone_id" {
  description = "ID da Hosted Zone para criar DNS"
  type        = string
  default     = ""
}

variable "domain_name" {
  description = "Nome do domínio (ex: app.meudominio.com)"
  type        = string
  default     = ""
}
