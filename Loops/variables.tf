variable "List_Type" {
    default = ["FrontEnd", "BackEnd", "DataBase"]
}

variable "Map_Type" {
    default = {
        front = "FrontEnd"
        back  = "BackEnd"
        db  =  "DataBase"
    }
}

variable "Set_Type" {
    default = ["Althaf", 12, true]
}

variable "Object_Type" {
    # type = object({
    #   name = string
    #   course = number
    #   status = bool
    # })  
    default = {
        name = "Althaf"
        course  = 120
        status = false
    }
}

variable "Tupple_Type" {
    type = tuple([string, number, bool])
    default = ["Althaf", 12, true]
}

variable "Map_Of_Object"{
    type = map(object({
      name = string
      course = number
      status = bool
    }))
    default = {
      "name" = {
        name = "Althaf"
        course = 120
        status = true
      },
      "name1" = {
        name = "Althaf"
        course = 120
        status = true
      }
    }
}

variable "List_Of_Object"{
    type = list(object({
      name = string
      course = number
      status = bool
    }))
    default = [
      {
        name = "Althaf",
        course = 120,
        status = true
      },
      {
        name = "Althaf",
        course = 120,
        status = true
      }
    ]
}