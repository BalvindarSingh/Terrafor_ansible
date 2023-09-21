variable "instanceType" {
    default = "t2.micro"
}

variable "instance_ami" {
    default = "ami-053b0d53c279acc90"
}

variable "EC2Name"{
    type = list
    default = ["stanging","prodection","testing"]
}

# variable "instanceType" {
#     default = "t2.micro"
# }
# variable "instanceType" {
#     default = "t2.micro"
# }
# variable "instanceType" {
#     default = "t2.micro"
# }