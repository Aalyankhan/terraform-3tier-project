# # Configure the Backend
# terraform {
#   backend "s3" {
#     bucket         = "my-terraform-state"
#     encrypt        = true
#     key            = "terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-locks"
#   }
# }