[![Releases](https://img.shields.io/gitlab/v/release/colibris-xyz/duplicacy-docker?gitlab_url=https%3A%2F%2Fframagit.org)](https://framagit.org/colibris-xyz/duplicacy-docker/-/releases)
[![Build status](https://img.shields.io/gitlab/pipeline-status/colibris-xyz/duplicacy-docker?branch=main&gitlab_url=https%3A%2F%2Fframagit.org)](https://framagit.org/colibris-xyz/duplicacy-docker/-/pipelines)
[![License](https://img.shields.io/gitlab/license/colibris-xyz/duplicacy-docker?gitlab_url=https%3A%2F%2Fframagit.org)](https://framagit.org/colibris-xyz/duplicacy-docker/-/blob/main/LICENSE)

# Docker image for Duplicacy

## Usage

```sh
docker run --rm -v /path/to/repository/.duplicacy:/duplicacy/.duplicacy -v /path/to/repository/:/duplicacy ghcr.io/colibris-xyz/duplicacy:latest <duplicacy-command>
```

❗ __NB:__ You need to set the repository path to `/duplicacy` in the `preferences` file (because this is where the directory is mounted into the container).
