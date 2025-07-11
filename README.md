# Template AWS Batch

## Topo has moved to argo workflows for most of it's batch processing [linz/topo-workflows](https://github.com/linz/topo-workflows)

### _A minimal template for AWS Batch development_


## Why?

This repository exists to show a working example of a job being deployed and run on AWS Batch

The main batch job is in the `./batch/Dockerfile` this is the script that is run on the batch nodes, this can be written in any language (Python, javascript, C, etc..)

The configuration of the batch pipeline is done inside `./src/infra/batch.ts` this includes things like the default memory size number of CPUs to use etc for the containers.

## Usage

This repository requires [NodeJs](https://nodejs.org/en/) > 12 & [Yarn](https://yarnpkg.com/en/)

Use [n](https://github.com/tj/n) to manage nodeJs versions

```bash
# Download the latest nodejs LTS & yarn
n lts
npm install -g yarn

# Install node deps
yarn

# build once
yarn build 

# Run build in watch mode
yarn build --watch
```

Deploying is done via `aws-cdk` 
```
export CDK_DEFAULT_ACCOUNT=1234567890

npx cdk deploy
```


