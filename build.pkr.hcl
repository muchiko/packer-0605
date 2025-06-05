packer {
  required_plugins {
    amazon = {
      source = "github.com/hashicorp/amazon"
      version = "~> 1.2"
    }
  }
}

source "amazon-ebs" "base" {
  ami_name      = "my-ami-{{timestamp}}"
  instance_type = "t3.medium"
  region        = "ap-northeast-1"

  #source_ami     = "ami-0c2da9ee6644f16e5" // Am2023
  #source_ami     = "ami-0265dc69e8de144d3" // AL2
  #source_ami     = "ami-05b3b514a29d01af2" // 05_aws_updates
  #source_ami     = "ami-09c7164ef9b71227b" // 06_zsh_updates
  source_ami     = "ami-0a63b911097a9e08f" // 07_crz7_init

  subnet_id          = "subnet-07145153a7d374e60" // aws_subnet.public.id
  security_group_ids = ["sg-0b069bb310b99b1aa"]   // aws_security_group.main.id

  ssh_username          = "ec2-user"
  ssh_keypair_name      = "shoji_fukasawa"
  ssh_private_key_file  = "~/.ssh/shoji_fukasawa.pem"

  associate_public_ip_address = true

  launch_block_device_mappings {
    device_name = "/dev/sda1"
    volume_size = 16
    volume_type = "gp2"
    delete_on_termination = true
  }

  tags = {
    Name = "my-ami-{{timestamp}}"
  }
}

build {
  sources = ["source.amazon-ebs.base"]

  # provisioner "shell" {
  #   script = "scripts/01_base_updates.sh"
  # }

  # provisioner "shell" {
  #   script = "scripts/02_php_updates.sh"
  # }

  # provisioner "shell" {
  #   script = "scripts/03_nginx_updates.sh"
  # }

  # provisioner "shell" {
  #   script = "scripts/04_mysql_updates.sh"
  # }

  # provisioner "shell" {
  #   script = "scripts/05_aws_updates.sh"
  # }

  # provisioner "shell" {
  #   script = "scripts/06_zsh_updates.sh"
  # }

  # provisioner "shell" {
  #   script = "scripts/07_crz7_init.sh"
  # }
}
