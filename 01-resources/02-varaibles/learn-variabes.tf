variable "sample" {
    default = "hello"
}

output "sample1" {
    value = var.sample
}

variables "fruits_list" {
    default = ["apple","orange","graps"]
}

output "fruitslist_output_values" {
    value = var.fruits_list[2]
}