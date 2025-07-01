
# String type
# The string type input variables are used to accept values in the form of UNICODE characters. 
# The value is usually wrapped by double quotes, as shown below. 


variable "String_Type" {
    description = "This is a String Type Variable"
    type        = string
    default     = "This is a String Type Variable"
}


# Number type
# The number type input variable enables us to define and accept numerical values as inputs for their 
# infrastructure deployments. For example, these numeric values can help define the desired number of 
# instances to be created in an auto-scaling group. The code below defines a number type input variable 
# in any given Terraform config.

variable "Number_Type" {
    description = "This is a Number Type Variable"
    type        = number
    default     = 20
}


# Boolean type
# The boolean type input variable is used to define and accept true/false values as inputs for 
# infrastructure deployments to incorporate logic and conditional statements into the Terraform configurations. 
# Boolean input variables are particularly useful for enabling or disabling certain features or behaviors in 
# infrastructure deployments.

variable "Boolean_Type" {
    description = "This is a Boolean Type Variable"
    type        = bool
    default     = true
}


# Terraform list variable
# Terraform list variables allow us to define and accept a collection of values as inputs for 
# infrastructure deployments. A list is an ordered sequence of elements, and it can contain any data type, 
# such as strings, numbers, or even other complex data structures. However, 
# a single list cannot have multiple data types.

# List type input variables are particularly useful in scenarios where we need to provide multiple 
# values of the same type, such as a list of IP addresses, a set of ports, or a collection of resource names.

variable "List_Type" {
    description = "This is a List Type Variable"
    type        = list
    default     = ["Althaf", 10, true]
}

variable "List_Of_String_Type" {
    description = "This is a List Of String Type Variable"
    type        = list(string)
    default     = ["Althaf", "Hussain", "Shaik"]
}


# Map type
# The map type input variable enables us to define and accept a collection of key-value pairs as inputs for our 
# infrastructure deployments. A map is a complex data structure that associates values with unique keys, 
# similar to a dictionary or an object in other programming languages. For example, a map can be used to 
# specify resource tags, environment-specific settings, or configuration parameters for different modules.

variable "Map_Type" {
    description     = "This is a Map Type Variable"
    type            = map
    default         = {
        names       = "Althaf"
        course      = "AWS Devops"
        duration    = 120
    }
}