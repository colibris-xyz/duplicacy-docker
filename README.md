[![GitHub release](https://img.shields.io/github/v/release/colibris-xyz/duplicacy-docker.svg?style=flat)](https://github.com/colibris-xyz/duplicacy-docker/releases/latest)
[![GitHub license](https://img.shields.io/github/license/colibris-xyz/duplicacy-docker)](https://github.com/colibris-xyz/duplicacy-docker/blob/main/LICENSE)

# Docker image for Duplicacy

## Usage

```sh
docker run --rm -v /path/to/repository/.duplicacy:/duplicacy/.duplicacy -v /path/to/repository/:/duplicacy ghcr.io/colibris-xyz/duplicacy:latest <duplicacy-command>
```

❗ __NB:__ You need to set the repository path to `/duplicacy` in the `preferences` file (because this is where the directory is mounted into the container).
