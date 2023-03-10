output "id" {
    description = "ID of Rest API Gateway."
    value       = var.create_api ? module.rest_api[0].id : null
}

output "arn" {
    description = "ARN of Rest API Gateway."
    value       = var.create_api ? module.rest_api[0].arn : null
}

output "api_execution_arn" {
    description = "API Gateway Execution ARN part to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function."
    value       = var.create_api ? module.rest_api[0].execution_arn : null
}

output "root_resource_id" {
    description = "Resource ID of the REST API's root."
    value       = var.create_api ? module.rest_api[0].root_resource_id : null
}

output "resource_id" {
    description = "Resource's identifier."
    value       = var.create_resource ? module.api_resource[0].id : null
}

output "resource_path" {
    description = "Complete path for the API resource, including all parent paths."
    value       = var.create_resource ? module.api_resource[0].path : null
}

output "api_keys" {
    description = "The API key details."
    value       = module.api_security.api_keys
}

output "api_authorizers" {
    description = "The API Gateway Authorizer details."
    value = module.api_security.api_authorizers
}

output "stage_id" {
    description = "ID of the Stage."
    value       = var.create_deployment ? module.api_deployment[0].stage_id : null
}

output "stage_arn" {
    description = "ARN of the Stage."
    value       = var.create_deployment ? module.api_deployment[0].stage_arn : null
}

output "invoke_url" {
    description = "URL to invoke the API pointing to the stage."
    value       = var.create_deployment ? module.api_deployment[0].invoke_url : null
}

output "deployment_execution_arn" {
    description = "Deployment Execution ARN to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function."
    value       = var.create_deployment ? module.api_deployment[0].execution_arn : null
}

output "vpc_links" {
    description = "VPC Link Identifiers map."
    value       = { for vpc_link in var.vpc_links: vpc_link.name => aws_api_gateway_vpc_link[vpc_link.name].id }
}