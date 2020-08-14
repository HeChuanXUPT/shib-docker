# shib-docker
This is docker image for shib(Presto SQL web service).

# shib repository
https://github.com/tagomoris/shib

# build
docker build -t shib/master .

# Usage
## config.js
create a shib config file `config.js`, like:
```
var servers = exports.servers = {
  listen: 3000,
  fetch_lines: 1000,
  query_timeout: null, // seconds. (null:shib will wait query response infinitely).
  setup_queries: [],
  storage: {
    datadir: './var'
  },
  executer: {
    name: 'presto',
    host: '127.0.0.1',
    port: 8080,
    support_database: true,
    default_database: 'default',
    catalog: 'test'
  },
  monitor: null
};

```

## start
> docker run -d -v /xxx/config.js:/opt/shib/config.js -p 3001:3000 shib:master
