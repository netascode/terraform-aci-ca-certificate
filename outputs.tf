output "dn" {
  value       = aci_rest.pkiTP.id
  description = "Distinguished name of `pkiTP` object."
}

output "name" {
  value       = aci_rest.pkiTP.content.name
  description = "CA certificate name."
}
