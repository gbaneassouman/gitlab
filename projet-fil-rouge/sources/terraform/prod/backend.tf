terraform {
  backend "s3" {
    bucket = "fil-rouge-backend"
    key = "prod.tfstate"
    region = "us-east-1"
  }
}
