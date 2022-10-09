# docker run -p 3000:80 --rm --name feedback-node-container feedback-node:volumns

# add colon to separate path and volumes name

# docker run -p 3000:80 --rm --name feedback-node-container -v feedback:/app/feedback feedback-node:volumes

# add another bind Mounts (Volumes)

docker run -d -p 3000:80 --rm --name feedback-node-container -v feedback:/app/feedback -v ${PWD}:/app -v app/node_modules feedback-node:volumes