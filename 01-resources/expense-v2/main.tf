resource "aws_instance" "frontend" {
    for_each = var.components
    ami = var.ami
    instance_type = each.value["instance_type"]
    vpc_security_group_ids = var.sg_id
    tags = {
        Name = "${each.value["name"]}-${var.env}"
    }
}
# }
# resource "aws_route53_record" "frontend-dev" {
# zone_id = var.zone_id
# name = "frontend-${var.env}"
# type = "A"
# ttl = 30
# records = [aws_instance.frontend.private_ip]
# }

# resource "aws_instance" "backend" {
#     ami = var.ami
#     instance_type = var.instance_type
#     vpc_security_group_ids = var.sg_id
#     tags = {
#         Name = "backend"
#     }
# }
# resource "aws_route53_record" "backend-dev" {
# zone_id = var.zone_id
# name = "backend-${var.env}"
# type = "A"
# ttl = 30
# records = [aws_instance.backend.private_ip]
# }

# resource "aws_instance" "mysql" {
# ami = var.ami
#     instance_type = var.instance_type
#     vpc_security_group_ids = var.sg_id
#     tags = {
#         Name = "mysql"
#     }
# }

# resource "aws_route53_record" "mysql-dev" {
# zone_id = var.zone_id
# name = "mysql-${var.env}"
# type = "A"
# ttl = 30
# records = [aws_instance.mysql.private_ip]
# }
