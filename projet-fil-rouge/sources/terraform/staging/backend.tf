terraform {
  backend "s3" {
    bucket = "fil-rouge-backend"
    key = "staging.tfstate"
    region = "us-east-1"
  }
}
