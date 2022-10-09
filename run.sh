# docker run -p 3000:80 --rm --name feedback-node-container feedback-node:volumns

# add colon to separate path and volumes name

# docker run -p 3000:80 --rm --name feedback-node-container -v feedback:/app/feedback feedback-node:volumes

# add another bind Mounts (Volumes)

docker run -d -p 3000:80 --name feedback-node-container -v ${PWD}:/app -v app/node_modules feedback-node:volumes

# add colon and ro to implicit this volumes is read only
# docker run -d -p 3000:80 --name feedback-node-container -v ${PWD}:/app:ro -v app/node_modules feedback-node:volumes


# add volume to make sure that the directory we want have permission to access and write
# docker run -d -p 3000:80 --name feedback-node-container -v ${PWD}:/app:ro -v /app/temp -v app/node_modules feedback-node:volumes