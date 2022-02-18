FROM python:3.9-slim

LABEL "com.github.actions.name"="Lintly-Flake8-extended"
LABEL "com.github.actions.description"="Automatic code reviewer for GitHub PRs."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/MichaelVoelkel/lintly-flake8-github-actions.git"
LABEL "homepage"="https://github.com/MichaelVoelkel/lintly-flake8-github-actions"
LABEL "maintainer"="Michael Völkel <michael.alexander.voelkel@gmail.com>"

RUN pip install --upgrade pip 
RUN pip install flake8
RUN pip install lintly
RUN pip install -Iv --force-reinstall MarkupSafe==2.0.1

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
