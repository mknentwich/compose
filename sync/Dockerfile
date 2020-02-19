FROM alpine
ENV GIT_SYNC_REPO https://github.com/devsenexx/git-sync
ENV GIT_SYNC_BRANCH master
ENV GIT_SYNC_REV FETCH_HEAD
ENV GIT_SYNC_DEST /git
ENV GIT_SYNC_WAIT 10

RUN apk --no-cache add git openssh

ADD git-sync.sh /usr/local/bin/git-sync.sh

CMD /usr/local/bin/git-sync.sh
