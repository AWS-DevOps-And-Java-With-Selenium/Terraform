output "output" {
    value = {
        String          = var.String_Type != "This is a String Type Variable" && var.Boolean_Type == true ? "Name is Althaf" :  "Name is not Althaf"
        Number          = var.Number_Type == 20 || var.Number_Type == 30 ? 500 : 300
        Boolean         = var.Boolean_Type
        List            = var.List_Type
        List_Of_String  = var.List_Of_String_Type
        Map_Type        = var.Map_Type
        Object_Type     = var.Object_Type
        Tupple_Type     = var.Tupple_Type
        Set_Type        = var.Set_Type
        Map_Of_Object   = var.Map_Of_Object

    }
}
