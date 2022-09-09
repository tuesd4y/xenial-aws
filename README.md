# Xenial AWS cli

Minimal docker image running ubuntu xenial that has the AWS cli installed.

## Usage

`docker run -t -i tuesd4y/xenial-aws aws --version`

## Building

```bash
docker buildx build \
--push \
--platform linux/arm/v7,linux/arm64/v8,linux/amd64 \
--tag tuesd4y/xenial-aws:latest .
```

## License

Released under the MIT License, please see [License](./LICENSE) for more details.

This repository is heavily inspired by the previous work of Peter Evans in his [xenial-gcloud](https://github.com/peter-evans/xenial-gcloud) repository.
