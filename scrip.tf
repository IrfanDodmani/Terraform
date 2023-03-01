provider "aws"{
  region = "ap-south-1"
  access_key = "AKIAY3PTFVFT4562KAFV"
  secret_key = "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"  
}

resource "aws_instance" "AWSEC2Instance"{
    ami   =  "ami-09ba48996007c8b50"
    instance_type = "t2.micro"
    security_groups = ["Linux"]
    key_name      = "key1mb"
    tags = {
        Name = "EC2 Instance by Terroform"
    }
}