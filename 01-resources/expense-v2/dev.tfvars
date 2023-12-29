env = "dev"
ami = "ami-03265a0778a880afb"
sg_id = ["sg-08f5f6ed60d31b69a"]
zone_id = "Z06742268XH94UQRFB14"

components = {
    frontend = {
        name = "frontend"
        instance_type = "t3.micro"
    }

    backend = {
        name = "backend"
        instance_type = "t3.micro"
    }

    mysql = {
        name = "mysql"
        instance_type = "t3.micro"
    }
} 
