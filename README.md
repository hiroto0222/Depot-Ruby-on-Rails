# Agile Web Development with Rails 7

## Task A: Creating the Applciation
### Iteration A1: Creating the Product Maintenance Application
- Generate scaffold for a given model Product
```Shell
bin/rails​​ ​​generate​​ ​​scaffold​​ ​​Product​​ ​​​​title:string​​ ​​description:text​​ ​​image_url:string​​ ​​price:decimal
```
- Apply migrations
```Shell
bin/rails​​ ​​db:migrate
```

### Iteration A2: Making Prettier Listings
- ```turbo_method: :delete``` parameter. This parameter determines which method is called in the ProductsController class and also affects which HTTP method is used.

## Task B: Validation and Unit Testing
### Iteration B1: Validating!
- Models are an ideal place to put validations; If a model checks it before writing to the database, the database will be protected from bad data.
```ruby
class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
end
```
- The ```validates``` method is the standard Rails validator. It checks one or more model fields against one or more conditions.
- ```presence: true``` tells the validator to check that each of the named fields is present and that its contents aren’t empty.
