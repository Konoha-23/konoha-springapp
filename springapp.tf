resource "helm_release" "springapp" {
  name       = "springapp"
  #create_namespace = true
  namespace  = "konoha"
  repository = "https://konoha-23.github.io/konoha-springapp/"
  chart      = "springapp"
  
  values = [
    "${file("springapp-values.yml")}"
  ]
}
