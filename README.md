# Tutorial project first touch with graphQl and raiils


## Install

### Clone the repository

```shell
git git@github.com:Shkuryn/graphql_titorial.git
cd graphql_titorial
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 3.2.2`

If not, install the right ruby version using [rvm](https://rvm.io/) (it could take a while):

```shell
rvm install 3.2.2
```

### Initialize the database

```shell
rails db:create db:migrate db:seed
```



## Serve

```shell
rails s
```

## Examples of queries

go to http://localhost:3000/graphiql 

try to execute next queries

1) ** 3) products query**
query {
  allProducts {
    id
    title
    description
    vendor
    color
    price
  }
}


** 2 ) mutation**
    
mutation {
  addProduct(
    input: {
      title: "product_4",
      description: "super-puper",
      color: "white",
      vendor: "apple",
      price: 1212,

    }
  ) {
    clientMutationId
    product {
      id
      title
      description
      color
      vendor
      price
    }
  }
}


