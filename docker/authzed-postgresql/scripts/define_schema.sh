source use_local_zed.env
# docker-compose -f ../docker-compose-zed.yaml run --rm zed_cli --insecure schema write < schema.zed
zed schema write schema.zed
