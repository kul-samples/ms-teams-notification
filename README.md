# ms-teams-notification
repository for GitHub Action to send notification to MS Teams
#### `entrypoint.sh`
This file is used to execute the actual action using curl to POST the message passed on to the script as an input to the MS Teams channel, URI for the same is also provided as input 1.
#### example
```
entrypoint.sh MS_TEAMS_WEBHOOK_URL MESSAGE
```
#### `Dockerfile`
This file is used to invoke the action within the container based on the image defined on the top with `FROM`
```
FROM ubuntu:20.04
RUN apt-get update -y && apt-get install curl -y
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
```
