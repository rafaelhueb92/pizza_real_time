<h1>Pizza Ordering System</h1>
<p>This project is a scalable and efficient pizza ordering system built using AWS services and modern web technologies. The system allows users to place pizza orders, and the orders are processed asynchronously with low latency. The architecture uses AWS Lambda, API Gateway, SQS, DynamoDB, and ECS to handle pizza orders and manage the status updates in real time.</o>

<h1>Architecture Overview</h1>
The system is designed to handle pizza orders with minimal latency. The main components are:

Frontend (React): Users can place their pizza orders through a simple web interface.
API Gateway: Exposes an API for receiving orders and triggering backend processes.
Lambda (Pizzaiolo): Handles the core logic of order processing and updates the order status in DynamoDB.
DynamoDB: A fast NoSQL database for storing orders and their statuses.
ECS with Node.js & GraphQL: Manages the API that queries the order status.
SQS (optional): Used for asynchronous processing, if needed for future scalability or complexity.
Features
Users can place pizza orders via a React frontend.
The system automatically processes orders using AWS Lambda functions.
Order statuses are updated at regular intervals (e.g., every minute) via the Pizzaiolo Lambda.
Real-time status updates are available to the user through the API powered by Node.js & GraphQL.
The system leverages DynamoDB for fast, scalable storage of orders.
Optional integration with SQS for asynchronous task management.
Technologies Used
AWS Lambda: Serverless computing service for processing orders and updating statuses.
API Gateway: HTTP endpoint for communication between the frontend and backend.
DynamoDB: NoSQL database to store order information and status.
ECS (Elastic Container Service): Runs the Node.js application to handle API requests.
GraphQL: Query language for the API, allowing users to query the order status.
React: Frontend library for building the user interface.
SQS: Simple Queue Service for handling asynchronous tasks (optional).
Getting Started
To get started with this project locally or on AWS, follow these steps:

<h1>Prerequisites</h1>
AWS account with appropriate permissions (Lambda, API Gateway, DynamoDB, ECS, SQS, etc.)
Node.js (v14 or later) installed locally
React environment setup
AWS CLI configured on your local machine
Setup Steps
Clone the Repository:

bash
Copiar código
git clone https://github.com/yourusername/pizza-ordering-system.git
cd pizza-ordering-system
Install Dependencies:

For the frontend (React):

bash
Copiar código
cd frontend
npm install
For the backend (Node.js):

bash
Copiar código
cd backend
npm install
Set Up AWS Lambda Functions:

Deploy Lambda functions using the AWS Console or Infrastructure-as-Code tools (e.g., AWS CloudFormation or Terraform).
Create the DynamoDB Table:

Set up a DynamoDB table with the appropriate schema to store orders and statuses (e.g., orderId, status, pizzaType).
Configure API Gateway:

Create an API Gateway endpoint that triggers the Lambda function to receive orders.
Deploy ECS Cluster:

Set up ECS to run the Node.js GraphQL server to serve the API for querying order statuses.
(Optional) Set Up SQS:

If you are using SQS for asynchronous tasks, configure it for order processing (e.g., updating order status).
Run the Application:

Run the React application:
bash
Copiar código
npm start
Access the application in your browser and start placing orders.
Usage
Placing an Order:

Use the frontend interface to select a pizza and place an order.
The backend (via API Gateway and Lambda) processes the order and updates its status in DynamoDB.
Tracking Order Status:

Query the order status using the GraphQL API to get real-time updates.
The Lambda function periodically checks the DynamoDB table and updates the status of the order (e.g., from "Received" to "Preparing" and "Ready").
Order Status Updates:

The status of each order is updated automatically by the Pizzaiolo Lambda function based on the time intervals you define (e.g., every minute).
Architecture Diagram

Contributing
Feel free to fork the project and submit pull requests. Contributions are always welcome!

License
This project is licensed under the MIT License - see the LICENSE file for details.