module "nomad_clients" { 
              source = "git::https://github.com/CircleCI-Public/server-terraform.git//nomad-aws?ref=4.0.0"
              nodes = 25
              subnets = var.subnets
              vpc_id = var.vpc_id
              basename = var.basename
              instance_type = var.instance_type 
              instance_tags = {
                    "vendor" = "circleci"
                    "owner" = "vijay"
              }
              enable_mtls=true
              nomad_server_hostname = var.cci_hostname
              dns_server = ""
              blocked_cidrs = [ "" ]
      }


output "nomad" {
  value = module.nomad_clients
}
