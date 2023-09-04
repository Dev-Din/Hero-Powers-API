# Superhero Tracker API

The Superhero Tracker API is a Ruby on Rails application that allows you to manage and retrieve information about superheroes and their superpowers.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [API Endpoints](#api-endpoints)
- [Error Handling](#error-handling)

---

## Features

- Manage superheroes and their superpowers.
- Retrieve information about individual superheroes and their powers.
- Error handling for invalid requests.
- RESTful API following naming conventions.
- Serialization of JSON responses.
- Validation of input data.
- Proper separation of concerns following MVC architecture.

---

## Getting Started

To get started with the Superhero Tracker API, follow these steps:

1. Clone the repository:

   ```sh
   git clone <repository-url>
   cd superhero-tracker-api
2. Install dependencies:

   ```sh
   bundle install
3. Set up the database:

   ```sh
   rails db:create
   rails db:migrate
4. (Optional) Seed the database with sample data:
   ```sh
   rails db:seed
5. Start the server:

    ```sh
    rails server    
The API should now be running at http://localhost:3000.

---

## API Endpoints

- /heroes: Retrieve a list of all superheroes.
- /heroes/:id: Retrieve information about a specific superhero.
- /powers: Retrieve a list of all superpowers.
- /powers/:id: Retrieve information about a specific superpower.
- PATCH /powers/:id: Update the description of a superpower.
- POST /hero_powers: Create a new association between a superhero and a superpower.

For detailed information on how to use each endpoint and the expected JSON response formats, refer to the API documentation.

---

## Error Handling
The API handles errors gracefully and returns appropriate HTTP status codes and error messages. Common error scenarios are documented in the API documentation.

---