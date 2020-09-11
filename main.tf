terraform {
 backend "remote" {
   organization = "ayu"

   workspaces {
     name = "EC2testAction"
   }
 }
}
resource "aws_instance" "example" {
    ami = "ami-058043b9f3c10c078"
    instance_type = "t2.micro"
}
