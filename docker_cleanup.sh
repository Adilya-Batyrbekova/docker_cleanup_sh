
#!/bin/bash
# Docker Cleanup Script
# This script stops running containers and prunes unused Docker resources

echo "Stopping all running containers..."
docker stop $(docker ps -q)

echo "Removing all stopped containers..."
docker container prune -f

echo "Pruning unused Docker images..."
docker image prune -a -f

echo "Pruning unused Docker volumes..."
docker volume prune -f

echo "Pruning unused Docker networks..."
docker network prune -f

echo "Pruning all unused Docker system resources..."
docker system prune -a --volumes -f

echo "Cleanup complete! Docker environment is optimized."
