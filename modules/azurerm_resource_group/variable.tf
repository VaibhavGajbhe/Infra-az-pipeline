variable "rg-var" { 
    type = map(object({
    rg-name  = string
    location = string
  }))
}
