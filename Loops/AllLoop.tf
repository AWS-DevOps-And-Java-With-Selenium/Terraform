output "ForLoopOutputs" {
    value = {
    #    For Loop Syntax:
    #    for var in actual variable : var
       Listupper  = [for names in var.List_Type : upper(names)]
       Mapupper   = [for names in var.Map_Type : upper(names)]
       setType    = [for names in var.Set_Type : names]
       obj        = [for names in var.Object_Type : names]
       tup        = [for names in var.Tupple_Type : names]
       mapobj     = [for names in var.Map_Of_Object : names]
       listobj    = [for names in var.List_Of_Object : names]
    #    for_each Loop Syntax:
    #    for key, value in actual variable : key => "our message ${key} and ${value}"
       For_each   = {
        for key, value in var.Map_Type : key => "The ${key} value is ${value}"
        }
        countTypeLoop = [for i in range(length(var.List_Type)) : "${i+1 } ${var.List_Type[i]}"]
    }
    
}