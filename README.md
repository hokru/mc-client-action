# mc-client-action
Provisioning of the minio `mc` client for Github Action.
This action sets up the minio target and credentials internally via the `MC_HOST` environmental variable, avoiding the need to write credentials to file with `mc alias set`.

## Example
```
- name: test minio on play
      uses: ./
      id: playtest
      with:
        endpoint: play.min.io
        access_key: ${{secrets.accesskey}}
        secret_key: ${{secrets.secretkey}}
        alias: play
        cmd: "mc ls play"
```

## Keywords

* `endpoint` : address of S3 service without `http*://`. Should point to the API endpoint.
* `access_key`: access key or username
* `secret_key`: secret key or password
* `alias` : The name of the S3 service. Default = `minio`
* `cmd`: The full mc client command using the `alias`.