variable "sample" {
    default = "hello"
}

output "sample1" {
    value = var.sample
}

variable "fruits_list" {
    default = ["apple","orange","graps"]
}

output "fruitslist_output_values" {
    value = var.fruits_list[2]
}

variable "fruits_count_map" {
    default = {
        apple = 100
        banana = 200
    }
}

output "frits_quantity_mapvalues" {
    value=var.fruits_count_map["apple"]
}