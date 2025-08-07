terraform {
  backend "remote" {
    organization = "Mohamed-Alfeky"  

    workspaces {
      name = "Patient-Web-interface"  
    }
  }
}