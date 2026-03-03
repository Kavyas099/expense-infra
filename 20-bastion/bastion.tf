resource "aws_instance" "this" {
  ami                    = data.aws_ami.kavya.id # This is our devops-practice AMI ID
  vpc_security_group_ids = "sg-0d4000c3091d008d4"
  instance_type          = "t3.micro"
  subnet_id              = local.public_subnet_id

  # 20GB is not enough
  root_block_device {
    volume_size = 50    # Set root volume size to 50GB
    volume_type = "gp3" # Use gp3 for better performance (optional)
  }
  user_data = file("bastion.sh")

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-${var.environment}-bastion"
    }
  )
}

