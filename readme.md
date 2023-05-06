# Project Name

The project is to build a web app for sharing YouTube videos. The application should include a real-time notification system to showcase backend development skills. Key features include user registration and login, sharing YouTube videos, viewing a list of shared videos, and real-time notifications for new video shares. 

## Getting Started

### Prerequisites

* Ruby
* Rails
* PostgreSQL

### Installation

1. Clone the project repository to your local machine.
2. Install the project dependencies using `bundle install`.
3. Create a `.env` file in the project root directory and set the following environment variables:
    * `DATABASE_USERNAME`: The username for the database.
    * `DATABASE_PASSWORD`: The password for the database.
    * `DATABASE_HOST`: The host of the database.
    * `DATABASE_PORT`: The port of the database.
    * `SECRET_KEY_BASE`: A secret key that will be used to encrypt cookies.
4. Migrate the database.
    
        ```rails db:migrate
    ```

5. Seed the database.
    
        ```rails db:seed
    ```

6. Start the server.
    
        ```rails s
    

The project should now be running on port 3000. You can access it in your web browser by navigating to `http://localhost:3000`.

## Usage

The project can be used to do the following:

* Create and manage users.
* Create and manage posts.
* Comment on posts.
* Like and unlike posts.

## Development

To start developing on the project, run `rails c`. This will open a Rails console where you can interact with the database and the application code.

To run the project tests, run `rails test`. This will run all of the project tests.

## Deployment

To deploy the project, run `rails deploy`. This will build the project and deploy it to the specified environment.

## License

This project is licensed under the MIT License.


I hope this helps!