# docker run -p 3000:80 --rm --name feedback-node-container feedback-node:volumns

# add colon to separate path and volumes name

docker run -p 3000:80 --rm --name feedback-node-container -v feedback:/app/feedback feedback-node:volumes