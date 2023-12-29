resource "aws_instance" "frontend" {
    ami = "ami-03265a0778a880afb"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-08f5f6ed60d31b69a"]
    tags = {
        Name = "frontend"
    }
}
resource "aws_route53_record" "frontend-dev" {
zone_id = "Z06742268XH94UQRFB14"
name = "frontend-dev"
type = "A"
ttl = 30
records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
    ami = "ami-03265a0778a880afb"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-08f5f6ed60d31b69a"]
    tags = {
        Name = "backend"
    }
}
resource "aws_route53_record" "backend-dev" {
zone_id = "Z06742268XH94UQRFB14"
name = "backend-dev"
type = "A"
ttl = 30
records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
    ami = "ami-03265a0778a880afb"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-08f5f6ed60d31b69a"]
    tags = {
        Name = "mysql"
    }
}

resource "aws_route53_record" "mysql-dev" {
zone_id = "Z06742268XH94UQRFB14"
name = "mysql-dev"
type = "A"
ttl = 30
records = [aws_instance.mysql.private_ip]
}
