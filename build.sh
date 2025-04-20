echo "Building Docker Image..."
docker build -t balaji5667/my-java-app:latest .

echo "Logging into Docker Hub..."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

echo "Pushing Docker Image to Docker Hub..."
docker push balaji5667/my-java-app:latest

echo "Build and Push Completed Successfully 🚀"
