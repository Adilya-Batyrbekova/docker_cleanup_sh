
#!/bin/bash
# Скрипт очистки докеров
# Этот скрипт останавливает запущенные контейнеры и удаляет неиспользуемые ресурсы Docker

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
