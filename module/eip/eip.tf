module "ec2" {
    source = "../ec2"
}

resource "aws_eip" "elasticip" {
    instance = module.ec2.ec2id
}

output "EIP" {
    value = aws_eip.elasticip.public_ip  
}