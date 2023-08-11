terraform {
  backend "s3" {
    bucket = "mysomanath"
    key    = "vmdeploy"
    region = "ap-south-1"
  }
}