# Lab1_Devops: Triển khai hạ tầng AWS với Terraform và Cloudmation
tasks: 
- Sử dụng Terraform và Cloudmation triển khai dịch vụ trên AWS: VPC, Subnets, NAT Gateway, Route Tables, EC2 instances
- Thiết lập sercurity groups cho EC2
- Các test case dùng kiểm tra các dịch vụ đã triển khai

## 1. Cấu hình VPC bằng Terraform 
  ### Setup các tài nguyên cần thiết:
  + Cài đặt Terraform: [Terraform installation guide](https://learn.hashicorp.com/tutorials/terraform/install-cli).  
  + Cài đặt AWS CLI. 
  + Cấu hình aws configure với AWS Access Key ID, AWS Secret Access Key, Default region name (us-east-1)

  ### Chạy lệnh:
  **khởi tạo terraform**
  ```bash
  terraform init
  ```
  **tạo kế hoạch thực thi terraform**
  ```bash
  terraform plan
  ```
    **thực thi code terraform**
  ```bash
  terraform aplly
  ```
  ### Test case : Kiểm tra kết quả triển khai tài nguyên aws trên terraform 
  ### lưu ý: Destroy
    Sau khi triển khai và kiểm tra thành công, xóa các tài nguyên đã triển khai để tránh mất phí aws
  ```bash
  terraform destroy
  ```
## 2. Cấu hình VPC bằng CloudFormation
  + Sử dụng AWS CLI
  + Cấu hình aws configure với AWS Access Key ID, AWS Secret Access Key, Default region name (ap-southeast-2), Default output format.
  + Chạy lệnh:
  ```bash
  aws cloudformation create-stack --stack-name MyVPC --template-body file://CloudFormation_VPC.yaml
  ```
  để tạo stack trên CloudFormation.
  + Sau đó kiểm tra tiến trình tạo stack bằng lệnh:
  ```bash
  aws cloudformation describe-stacks --stack-name MyVPC
  ```
