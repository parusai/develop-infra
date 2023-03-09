resource "aws_s3_bucket" "sai__bucket" {
  bucket = var.bucket

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
 resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.sai__bucket.id
  versioning_configuration {
    status = "Enabled"
  }
  /* depends_on = [
    aws_s3_bucket.sai__bucket
  ] */
} 

/* resource "aws_instance" "my_inst" {
  ami           = "ami-006dcf34c09e50022"
  instance_type = "t2.micro"

  tags = {
    Name = "sai"
    owner = " harish sakamuri"

  }
} */


