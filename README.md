# browser opentelemetry example

## Requirements

This utilizes npm, npx, and a Honeycomb API Key.

## Setup
Run the setup bash script to initialize the directory and npm install the required dependencies. 

```bash
./setup.sh -a <Honeycomb APIKey>
```

## Running
Run the start script to build the javascript and serve up a simple http server on port 8080. 
  
```bash
./start.sh
```

Navigate to [http://localhost:8080/index.html](http://localhost:8080/index.html) while the server is running.  

The webpage loads a readme.txt file from the assets director using a simple fetch request.  
