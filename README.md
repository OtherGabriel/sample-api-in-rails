# A sample API in Ruby on Rails
> using Ruby on Rails and PostgreSQL

## Created your own Ruby on Rails APIs

**Important: create your database.yml based in database.yml.example**

For you created your own APIs in Ruby on Rails, use the simple down command:

```bash
rails new your-api --api --database=your-database-adapter
```

The command will created a new project based in the API rails template, but you must create your own models and migrations. Below is an example of a new model:

```bash
rails g your-model-name attribute:type attribute2:type
```

For execute your new migration:

```bash
rake db:migrate
```

Now, create a new API controller: **app/controller/api/v1/your-model-name_controller**.

**Methods for create based in my API controller:**

- index: all data;
- show: one object;
- create: a new data;
- destroy: destroy one object.

## Check API routes

use

```bash
rails routes
```

for check your all routes.

**Use Postman, Insomnia or VS Code ThunderClient for check your routes:**

- **get**    127.0.0.1/api/v1/your-model for index route;
- **get** 127.0.0.1/api/v1/your-model/{ id } for show route;
- **post**   127.0.0.1/api/v1/your-model for create route;
- **delete** 127.0.0.1/api/v1/your-model/{ id } for delete route;
