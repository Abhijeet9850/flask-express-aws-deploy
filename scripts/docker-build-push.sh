
#!/bin/bash
REGION="ap-south-1"
ACCOUNT_ID="your-aws-account-id"

aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com

# Backend
cd backend
docker build -t flask-backend .
docker tag flask-backend:latest $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/flask-backend:latest
docker push $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/flask-backend:latest
cd ..

# Frontend
cd frontend
docker build -t express-frontend .
docker tag express-frontend:latest $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/express-frontend:latest
docker push $ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/express-frontend:latest
