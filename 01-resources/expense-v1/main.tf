resource "aws_instance" "frontend" {
    ami = "03265a0778a880afb"
    instance_type= "t3.micro"
    vpc_security_group_ids = ["sg-08f5f6ed60d31b69a"]
    tags = {
        Name = "frontend"
    }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z06742268XH94UQRFB14"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
    ami = "03265a0778a880afb"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-08f5f6ed60d31b69a"]
    tags = {
        Name = "backend"
    }
}
resource "aws_route53_record" "backend" {
  zone_id = "Z06742268XH94UQRFB14"
  name    = "backend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]
}
resource "aws_instance" "mysql" {
    ami = "03265a0778a880afb"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-08f5f6ed60d31b69a"]
    tags = {
        Name = "mysql"
    }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z06742268XH94UQRFB14"
  name    = "mysql-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
