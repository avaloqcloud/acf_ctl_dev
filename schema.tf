// Copyright (c) 2023 Avaloq and/or its affiliates.
// Licensed under the Apache 2.0 license shown at https://www.apache.org/licenses/LICENSE-2.0

// Prepopulated Variables 
variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "region" {}
variable "current_user_ocid" {}

// Compartment Classification
variable "cls" {
  type = string
}

// Resident Configuration
variable "prt" {
  type = string
  description = "The Oracle Cloud Identifier (OCID) for a parent compartment, an encapsulating child compartment will be created to define the service resident. Usually this is the root compartment, hence the tenancy OCID."
}

variable "org" { 
  type        = string
  description = "The organization represents an unique identifier for a service owner and triggers the definition of groups on root compartment level"
}

variable "prj" { 
  type        = string
  description = "The project name represents an unique identifier for a service defined on root compartment level"
}

variable "src" {
  type        = string
  description = "The ACP source is an URI for the ACP image"
}

variable "own" {
  type        = string
  description = "The technical owner identifies the main administrator by his or her eMail address"
}

variable "stg"           { 
  type = string
  description = "The stage variable triggers lifecycle related resources to be provisioned"
}

variable "lcl" {
  type        = string
  description = "The locations triggers the target region for a service deployment"
}

# Components
variable "foundation" {
  type        = bool
  description = "Deploying the ACP foundation, incl. AMI and BDE"
}

variable "smart" {
  type        = bool
  description = "Deploying SmartClient together with the integration server"
}

variable "capi" {
  type        = bool
  description = "Deploying the community API"
}

# Domain Protection
variable "protect" {
  type        = bool
  description = "The flag enables operators to delete compartments with terraform destroy. For production deployments, this flag should be disabled."
}

# Network Settings
variable "inet" {
  type        = bool
  description = "Allows or disallows to provision resources with public IP addresses."
}

variable "nat" {
  type        = bool
  description = "Enables or disables routes through a NAT Gateway."
}

variable "ipv6" {
  type        = bool
  description = "Triggers the release of IPv6 addresses inside the VCN."
}

variable "osn" {
  type = string
  description = "Configures the scope for the service gateway"
  default     = "ALL"
}