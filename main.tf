resource "aws_instance" "vm" {
    ami = "ami-05ab12222a9f39021"    #replace ami id
    instance_type = "t2.micro"
    key_name = "laptop-key"           # key pair name also
    tags = {
        Name = "TF-SERVER"
    }
  
}
