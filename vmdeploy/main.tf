resource "aws_instance" "springpetclinic" {
  ami             = "ami-0f5ee92e2d63afc18"
  instance_type   = "t3.xlarge"
  key_name        = "somanath1"
  vpc_security_group_ids = ["sg-0d1adc5eb1eebc1dc"]
  tags = {
    Name = "springpetclinic"
  }
}
output "spc_url" {
  value = format("%s ansible_user=ubuntu", 
      aws_instance.springpetclinic.public_ip
    )
}
resource "aws_s3_bucket" "mysomanath" {
    bucket = "mysomanath"
}
