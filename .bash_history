sudo yum update -y
sudo apt update
ubuntu@ip-172-31-90-85:~$ sudo yum update -y
sudo: yum: command not found
ubuntu@ip-172-31-90-85:~$sudo apt upgrade -y
sudo apt upgrade 
sudo apt install -y software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install -y terraform
terraform version
mkdir terraform-project && cd terraform-project
vim main.tf
aws configure
terraform init
terraform plan
vim main.tf
terraform plan
vim main.tf
terraform plan
terraform apply -auto-approve
vim main.tf
terraform apply -auto-approve
terraform destroy -auto-approve
