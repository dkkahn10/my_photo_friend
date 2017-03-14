# My Photo Friend

A photo storage and editing application based on the following frameworks and technologies:
- Rails API backend
- Postgres database
- Hosted on AWS
- S3 used for photo storage
- React-based single-page application

To install, first clone the repo and then run:
```
bundle install
```

Start the server:
```
rails s
```

In another terminal window, run NPM:
```
npm start
```

Navigate your browser to `localhost:3000`.

# Test suite
Run the test suite for the Rails backend:
```
rspec
```

Run the test suite for the React frontend:
```
npm test
```