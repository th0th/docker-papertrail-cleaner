# Overview

This image helps you delete all log systems on [Papertrail](https://papertrailapp.com).

# Running

**Careful**: This will delete all your systems as well as logs from these systems on Papertail.

You can get your token [here](https://papertrailapp.com/account/profile).

```bash
docker run \
    --rm  # delete container when done \
    -e PAPERTRAIL_API_TOKEN=<PAPERTRAIL_TOKEN> \
    th0th/papertrail-cleaner
```