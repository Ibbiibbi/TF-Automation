#!/bin/bash

# Terraform executable path (update if necessary)
TERRAFORM_BIN="/path/to/terraform"

# Function to display a separator line for better readability
function print_separator() {
  echo "============================================="
}

# Function to initialize Terraform
function terraform_init() {
  print_separator
  echo "Initializing Terraform..."
  $TERRAFORM_BIN init
}

# Function to apply the Terraform configuration
function terraform_apply() {
  print_separator
  echo "Applying Terraform configuration..."
  $TERRAFORM_BIN apply -auto-approve
}

# Function to destroy the Terraform resources
function terraform_destroy() {
  print_separator
  echo "Destroying Terraform resources..."
  $TERRAFORM_BIN destroy -auto-approve
}

# Main script
case "$1" in
  init)
    terraform_init
    ;;
  apply)
    terraform_apply
    ;;
  destroy)
    terraform_destroy
    ;;
  *)
    echo "Usage: $0 {init|apply|destroy}"
    exit 1
    ;;
esac
