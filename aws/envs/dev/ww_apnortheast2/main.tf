module "vpc" {
  source      = "../../../modules/vpc_single_az"
  env         = var.env
  common_tags = local.common_tags
  # az     = "ap-northeast-2"
  # [aws_subnet.public.id, aws_subnet.fake.id]
}

module "sg" {
  source      = "../../../modules/sg_single_az"
  env         = var.env
  common_tags = local.common_tags
  vpc_id      = module.vpc.vpc_id
}

module "rdb" {
  source      = "../../../modules/rdb_single_az"
  common_tags = local.common_tags
  db_name     = var.db_name
  db_password = var.db_password
  db_username = var.db_username
  db_subnet_ids = [
    module.vpc.public_subnet_id,
    module.vpc.fake_subnet_id,
  ]
  vpc_security_group_ids = [module.sg.default_sg_id]

}

