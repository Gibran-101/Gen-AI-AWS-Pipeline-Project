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
clear
mkdir -p challenge-day2/backend && cd challenge-day2/backend
wget https://tcb-public-events.s3.amazonaws.com/mdac/resources/day2/cloudmart-backend.zip
unzip cloudmart-backend.zip
sudo apt install unzip
unzip cloudmart-backend.zip
ls
cd __MACOSX/
ls
cd src/
ls
cd routes/
ls
cd ..
cd controllers/
ls
cd ..
git add cloudmart-backend.zip package.json src/
git commit -m "backend repo added"
git push origin main
ls
vim .env
git add .env 
git commit -m "Env file added"
git push origin main
vim Dockerfile
git add Dockerfile 
git commit -m "Adding Dockerfile"
git push origin main
cd ..
mkdir frontend && cd frontend
wget https://tcb-public-events.s3.amazonaws.com/mdac/resources/day2/cloudmart-frontend.zip
unzip cloudmart-frontend.zip
ls
cd public/
ls
cd ..
git add eslint.config.js package-lock.json postcss.config.js src/ vite.config.js cloudmart-frontend.zip index.html package.json public/ tailwind.config.js 
git commit -m "adding frontend repository"
git push origin main
vim Dockerfile
git add Dockerfile 
git commit -m "updating frontend Dockerfile"
git push origin main
vim eksctl.sh
chmod 755 eksctl.sh 
vim kubectl.sh
chmod 755 kubectl.sh 
./eksctl.sh 
./kubectl.sh 
ls
./kubectl.sh
kubectl get nodes
cd ../..
cd challenge-day2/
cd backend/
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 009160073925.dkr.ecr.us-east-1.amazonaws.com
docker build -t cloudmart-backend .
docker tag cloudmart-backend:latest 009160073925.dkr.ecr.us-east-1.amazonaws.com/cloudmart-backend:latest
docker push 009160073925.dkr.ecr.us-east-1.amazonaws.com/cloudmart-backend:latest
clear
vim cloudmart-backend-deployment.yml
vim cloudmart-backend-service.yml
kubectl apply -f cloudmart-backend-deployment.yml 
kubectl apply -f cloudmart-backend-service.yml 
git add cloudmart-backend-deployment.yml cloudmart-backend-service.yml 
git commit -m "updating k8s manifest files backend"
git push origin main
kubectl get svc
cd ..
cd frontend/
clear
vim .env
git add .env
git commit -m "adding .env file frontend"
git push origin main
vim .env
git add .env 
git commit -m "updating .env file frontend"
git push origin main
vim cloudmart-frontend-deployment.yml
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 009160073925.dkr.ecr.us-east-1.amazonaws.com
docker build -t cloudmart-frontend .
docker tag cloudmart-frontend:latest 009160073925.dkr.ecr.us-east-1.amazonaws.com/cloudmart-frontend:latest
docker push 009160073925.dkr.ecr.us-east-1.amazonaws.com/cloudmart-frontend:latest
vim cloudmart-frontend-deployment.yml 
vim cloudmart-frontend-service.yml 
kubectl apply -f .
git add cloudmart-frontend-deployment.yml cloudmart-frontend-service.yml 
git commit -m "updating k8s manifest files frontend"
git push origin main
clear
kubectl get svc
kubectl delete service cloudmart-frontend-app-service
kubectl delete deployment cloudmart-frontend-app
kubectl delete service cloudmart-backend-app-service
kubectl delete deployment cloudmart-backend-app
ls
cd terraform-project/
ls
vim main.tf 
cd ..
git init
git add .
git remote add origin https://github.com/Gibran-101/Gen-AI-AWS-Pipeline-Project.git
git commit -m "DynamoDB Infra Created"
touch .gitignore
vim .gitignore 
git add terraform-project/main.tf
git add terraform-project/.terraform.lock.hcl
git add terraform-project/terraform.tfstate
git branch
git branch -m master main
git push origin main
git pull origin main
ls
git add terraform-project/main.tf
git add terraform-project/.terraform.lock.hcl
git commit - m "Merge remote changes into local branch"
git commit -m "Merge remote changes into local branch"
git push origin main
git pull origin main
git config pull.rebase true
git pull origin main
git add .
git commit -m "resolving the merger"
git pull origin main
git add terraform-project/main.tf terraform-project/.terraform.lock.hcl terraform-project/terraform.tfstate
git commit -m "added DynamoDB infra"
git status
git push origin main
git rm --cached terraform-project/.terraform/providers/registry.terraform.io/hashicorp/aws/5.88.0/linux_amd64/terraform-provider-aws_v5.88.0_x5
git commit -m "Remove large file from Git history"
git push origin main
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch terraform-project/.terraform/providers/registry.terraform.io/hashicorp/aws/5.88.0/linux_amd64/terraform-provider-aws_v5.88.0_x5" --prune-empty --tag-name-filter cat -- --all
git push origin --force --all
clear
sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
sudo docker run hello-world
sudo systemctl enable docker
docker --version
sudo usermod -a -G docker $(whoami)
newgrp docker
sudo yum update -y
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo docker run hello-world
sudo systemctl enable docker
docker --version
sudo usermod -aG docker $USER
newgrp docker
