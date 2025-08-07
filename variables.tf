variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-1" # اختر المنطقة الأقرب لك
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro" # مناسبة للـ Free Tier
}

variable "ami_id" {
  description = "AMI ID for Ubuntu Server"
  type        = string
  # ابحث عن أحدث AMI لـ Ubuntu Server 22.04 LTS (HVM), SSD Volume Type
  # في منطقتك. يمكنك العثور عليها في AWS EC2 Console -> AMIs
  # مثال لـ eu-west-1: ami-0a566236b60706859
  default     = "ami-0a566236b60706859" # غيّر هذا حسب الـ Region
}

variable "key_name" {
  description = "Name of the AWS Key Pair for SSH"
  type        = string
  # يجب أن يكون لديك Key Pair موجود في AWS أو قم بإنشاء واحد.
  # هذا الاسم هو الذي ستستخدمه للاتصال بالـ EC2 لاحقًا.
  # مثال: "my-minikube-key"
  default     = "your-ssh-key-name"
}