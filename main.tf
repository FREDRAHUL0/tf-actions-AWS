variable "instance_number" {
    default = 3
}

data "aws_ami" "main" {
    owners = [ "099720109477" ]
    most_recent = true
    filter {
       name = "name"
       values = [ "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*" ]

    }
  }
resource "aws_instance" "main" {
    count = var.instance_number
    ami = data.aws_ami.main.id
    instance_type = "t2.micro"
    tags = { Name = "myvm-${count.index}" }

}