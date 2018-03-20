# Scale of Belief - Lambda functions

This repo contains the scale of belief placement, api and admin application lambda functions.

## Requirements
* NodeJS >= 6.10.3
* PostgreSQL

## Installation
Clone the repository and install dependencies:
```bash
git clone git@github.com:CruGlobal/scale-of-belief-lambda.git
cd scale-of-belief-lambda
npm install
```

Create `.env` file and add any ENV overrides ([defaults](https://github.com/CruGlobal/scale-of-belief-lambda/blob/master/config/environment.js))
Create the database and run migrations (including test):
```bash
npm run db:create
npm run db:migrate
```

## Running
Scale of Belief has multiple lambda functions which can be run locally for development.

### Placement
```bash
./node_modules/.bin/serverless invoke local --function placement --path {path/to/event.js}
```

### API
Start a local webserver running at http://localhost:3000
```bash
./node_modules/.bin/serverless offline start
```


## Testing

Scale of Belief is using [Standard](https://standardjs.com/) style and [jest](https://facebook.github.io/jest/docs/en/getting-started.html) for testing.
```bash
# Create and setup test database
npm run db:create:test
npm run db:migrate:test

# Run lint, optionally auto fix issues
npm run lint
npm run lint -- --fix

# Run tests
npm test
```
