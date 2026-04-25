resource "aws_ecr_repository" "hk_eco_repo" {
  name                 = "hk-eco-web-app" 
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true 
  }
}

output "ecr_url" {
  value = aws_ecr_repository.hk_eco_repo.repository_url
}