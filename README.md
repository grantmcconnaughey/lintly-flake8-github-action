# Lintly-Flake8 GitHub Action

A GitHub Action that lints Python code with Flake8 then automatically creates pull request reviews if there are any violations.

## Usage

To use Lintly-Flake8 GitHub Action, add the following to a GitHub Actions workflow file such as `.github/workflows/main.yml`:

```yaml
on: [pull_request]

jobs:
  lint:
    runs-on: ubuntu-latest
    name: Lint
    steps:
      - name: Checkout
        uses: actions/checkout@v1
      - name: Lintly
        uses: grantmcconnaughey/lintly-flake8-github-action@9224464
        with:
          githubAPIToken: ${{ secrets.GITHUB_TOKEN }}
```

Now each PR created will be linted with Flake8. If there are any violations then Lintly will comment on the PR using the `github-actions` bot user.

![Lintly example](example.png)

**Note:** Lintly-Flake8 only works with the `pull_request` event.
