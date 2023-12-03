resource "aws_instatce" "sample" {
    ami = "ami-03265a0778a880afb"
    instance_type = "t2.mcro"
    tags = {
        Name = "Hello world"
    }
}