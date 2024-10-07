# Lab1_Devops

- Cấu hình VPC bằng CloudFormation
  + Sử dụng AWS CLI
  + Cấu hình aws configure với AWS Access Key ID, AWS Secret Access Key, Default region name (ap-southeast-2), Default output format.
  + Chạy lệnh:
  ```bash
  aws cloudformation create-stack --stack-name MyVPC --template-body file://CloudFormation_VPC.yaml
  ```
  để tạo stack.
  + Sau đó kiểm tra tiến trình tạo stack bằng lệnh:
  ```bash
  aws cloudformation describe-stacks --stack-name MyVPC
  ```
