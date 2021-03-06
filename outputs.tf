output "helm_namespace" {
  value = "${var.helm_namespace}"
}

output "release_revision" {
  value = "${helm_release.vault.metadata.0.revision}"
}

# Part of a hack for module-to-module dependencies.
# https://github.com/hashicorp/terraform/issues/1178#issuecomment-449158607
# and
# https://github.com/hashicorp/terraform/issues/1178#issuecomment-473091030
output "depended_on" {
  value = "${null_resource.dependency_setter.id}-${timestamp()}"
}
