module "sg" {
    source = "../sg"
}

resource "aws_instance" "ec2" {
    ami = "ami-032598fcc7e9d1c7a"
    instance_type = "t2.micro"
    security_groups = [module.sg.sgname]
}

output "ec2id" {
    value = aws_instance.ec2.id
}