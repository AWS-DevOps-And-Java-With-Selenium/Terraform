
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


# Object type
# An object represents a complex data structure that consists of multiple key-value pairs, 
# where each key is associated with a specific data type for its corresponding value. 
# The object type input variable allows us to define and accept a structured set of properties or 
# attributes as inputs for our infrastructure deployments. For example, an object is used to define a 
# set of parameters for a server configuration.

# The variable below demonstrates how an object type input variable is defined with multi-typed properties.

variable "Object_Type" {
    description     = "This is a Object Type Variable"
    type            = object({
        name        = string
        course      = string
        duration    = number
        status      = bool
    })
    default     = {
        name        = "Althaf"
        course      = "AWS DevOps"
        duration    = 120
        status      = true
    }
}


# Tupple Type
# A tuple is a fixed-length collection that can contain values of different data types. 
# The key differences between tuples and lists are:

# 1. Tuples have a fixed length, as against lists.
# 2. With tuples, it is possible to include values with different primitive types. 
#    Meanwhile, lists dictate the type of elements included in them.
# 3. Values included in tuples are ordered. Due to their dynamic sizes, 
#    it is possible to resize and reorder the values in lists.

variable "Tupple_Type" {
    description     = "This is a Tupple Type Variable"
    type            = tuple([string, number, bool])
    default         = ["Althaf", 10, true]
}

# Set type
# A set is an unordered collection of distinct values, meaning each element appears only once within the set. 
# As against lists, sets enforce uniqueness – each element can appear only once within the set. 
# Sets support various inbuilt operations such as union, intersection, and difference, 
# which are used to combine or compare sets.

variable "Set_Type" {
    description  = "This is a Set Type Variable"
    type         = set(any)
    default      = ["Althaf", 10, true]
}

# Map of objects
# One of the widely used complex input variable types is map(object). It is a data type that represents 
# a map where each key is associated with an object value.

# It allows us to create a collection of key-value pairs, where the values are objects with defined 
# attributes and their respective values. When using map(object), we define the structure of the object values 
# by specifying the attributes and their corresponding types within the object type definition. 
# Each object within the map can have its own set of attributes, providing flexibility to represent diverse 
# sets of data.

variable "Map_Of_Object" {
    description  = "This is a Map Of Object Type Variable"
    type         = map(object({
        name = string
        cidr = string
    }))  
    default      = {
        "subnet_A"  = {
            name    = "Subnet A"
            cidr    = "10.10.1.0/24"
        },
        "subnet_B"  = {
            name    = "Subne_B"
            cidr    = "10.10.2.0/24"
        },
        "subnet_C"  = {
            name    = "Subne_C"
            cidr    = "10.10.3.0/24"
        }
    }
}

# List of objects
# This type of variable is similar to the Map of objects, except that the objects are not referred to by any “key”. 
# The example used for the Map of objects can also be represented in the form of a list of objects, as shown below.

# The list(object) is an ordered list of objects where each object is referred to using the index. On the other hand, 
# map(object) is an unordered set, and each object is referred to using the key value.

variable "List_Of_Object" {
    description  = "This is a List Of Object Type Variable"
    type         = list(object({
        name     = string
        cidr     = string
    }))
    default      = [
     {
      name = "Subnet A",
      cidr = "10.10.1.0/24"
    },
    {
      name = "Subnet B",
      cidr = "10.10.2.0/24"
    },
    {
      name = "Subnet C",
      cidr = "10.10.3.0/24"
    }
  ]
}