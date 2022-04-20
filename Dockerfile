FROM python:3.10-slim

LABEL "com.github.actions.name"="Lintly-Flake8"
LABEL "com.github.actions.description"="Automatic code reviewer for GitHub PRs."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/grantmcconnaughey/lintly-flake8-github-actions.git"
LABEL "homepage"="https://github.com/grantmcconnaughey/lintly-flake8-github-actions"
LABEL "maintainer"="Grant McConnaughey <grantmcconnaughey@gmail.com>"

RUN pip3 install --upgrade pip
RUN pip3 install markupsafe==2.0.1
RUN pip3 install flake8
RUN pip3 install lintly

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
