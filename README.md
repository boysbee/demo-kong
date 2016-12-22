# Get start with `Kong`

## Work Instruction
### Start Kong database
```sh
./start_db.sh
```

### Start Kong
```sh
./kong.sh
```

### Start Kong GUI Dashboard
```sh
./kong-dashboard.sh
```
## Test connect with Kong
```sh
curl http://127.0.0.1:8001
```

## Add first API
```sh
curl -i -X POST \
--url http://127.0.0.1:8001/apis/ \
--data 'upstream_url=http://{your_host}:{port}/{uri_path}' \
--data 'request_host={api_host_key}' \
--data 'strip_request_path=true' \
--data 'request_path={uri_path}' \
--data 'name={name}'
```
## Request to test
```sh
curl -i -X GET \
--url http://127.0.0.1:8000/{uri_path} \
--header 'Host: {api_host_key}'
```
