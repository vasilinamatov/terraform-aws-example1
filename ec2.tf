provider "aws" {
    region     = "us-east-2"
    access_key = "AKIATWMTT4QY3QDUJLXK"
    secret_key = "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"
}

resource "aws_instance" "web" {
    ami             =   "ami-bf4193c7"
    instance_type   =   "t2.micro"
    key.name        =   "vasili-keypair"
    associate_public_ip_address =   "true"
    tags {
        Name = "Terraform EC2"
    }

}