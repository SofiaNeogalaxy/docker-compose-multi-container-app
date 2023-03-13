# docker-compose-multi-container-app
This repository contains the Docker Compose files and Dockerfiles needed to create a multi-container Docker application that includes a Jenkins server, a CentOS container with the AWS CLI installed, a MySQL database server, and an Ansible web server.
## Usage:

1. Clone the repository:

```bash
git clone https://github.com/SofiaNeogalaxy/docker-compose-multi-container-app.git
```
 
2. Navigate to the cloned directory:
```bash
cd <your-repository>
```
3. Set up your environment variables:
```javascript
export DB_HOST=<your-database-host>
export DB_PASSWORD=<your-database-password>
export DB_NAME=<your-database-name>
export AWS_SECRET=<your-aws-secret-key>
export BUCKET_NAME=<your-aws-s3-bucket-name>
```
4. Run the script to create a backup of your database and upload it to S3:
```bash
./script.sh $DB_HOST $DB_PASSWORD $DB_NAME $AWS_SECRET $BUCKET_NAME
```
5. Build the Docker images:
 ```
 docker-compose build
```
6. Start the Docker containers:
 ```
docker-compose up -d
```
7. Access the Jenkins dashboard at http://localhost:8080.
8. Use Ansible to configure your remote host:
```css
ansible-playbook -i hosts play.yml
```
9. Use the put.sh script to generate random data and add it to a file:
```bash
  ./put.sh
```
  
  
