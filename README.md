# sgaunet Homebrew Tap

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

Homebrew tap for the command-line tools published by [sgaunet](https://github.com/sgaunet).
It provides **21 tools**, all shipped as prebuilt binaries for macOS and Linux (amd64 and arm64).

## Installation

```sh
brew tap sgaunet/tools
brew install <tool>
```

You can also skip the tap step and use the fully qualified name, which taps automatically: `brew install sgaunet/tools/<tool>`.

## Quick reference

The release badges always show the latest published version.

| Tool | Latest release | Description | Category |
|------|----------------|-------------|----------|
| [auto-mr](#auto-mr) | [![release](https://img.shields.io/github/v/release/sgaunet/auto-mr?label=)](https://github.com/sgaunet/auto-mr/releases/latest) | Automated merge requests for GitLab, GitHub and self-hosted Forgejo | GitLab & Git |
| [gitcommit](#gitcommit) | [![release](https://img.shields.io/github/v/release/sgaunet/gitcommit?label=)](https://github.com/sgaunet/gitcommit/releases/latest) | Create git commits with specific historical dates | GitLab & Git |
| [gitlab-backup](#gitlab-backup) | [![release](https://img.shields.io/github/v/release/sgaunet/gitlab-backup?label=)](https://github.com/sgaunet/gitlab-backup/releases/latest) | Back up GitLab projects and groups | GitLab & Git |
| [gitlab-restore](#gitlab-restore) | [![release](https://img.shields.io/github/v/release/sgaunet/gitlab-backup?label=)](https://github.com/sgaunet/gitlab-backup/releases/latest) | Restore GitLab projects from backups | GitLab & Git |
| [gitlab-token-expiration](#gitlab-token-expiration) | [![release](https://img.shields.io/github/v/release/sgaunet/gitlab-token-expiration?label=)](https://github.com/sgaunet/gitlab-token-expiration/releases/latest) | List expiration dates of GitLab project, group and personal access tokens | GitLab & Git |
| [askit](#askit) | [![release](https://img.shields.io/github/v/release/sgaunet/askit?label=)](https://github.com/sgaunet/askit/releases/latest) | Terminal client for OpenAI-compatible chat completion APIs | AI & MCP |
| [gitlab-mcp](#gitlab-mcp) | [![release](https://img.shields.io/github/v/release/sgaunet/gitlab-mcp?label=)](https://github.com/sgaunet/gitlab-mcp/releases/latest) | MCP server with GitLab integration tools for Claude Code | AI & MCP |
| [postgresql-mcp](#postgresql-mcp) | [![release](https://img.shields.io/github/v/release/sgaunet/postgresql-mcp?label=)](https://github.com/sgaunet/postgresql-mcp/releases/latest) | MCP server with PostgreSQL integration tools | AI & MCP |
| [pplx](#pplx) | [![release](https://img.shields.io/github/v/release/sgaunet/pplx?label=)](https://github.com/sgaunet/pplx/releases/latest) | Unofficial CLI to query and chat with the Perplexity API | AI & MCP |
| [gocrypt](#gocrypt) | [![release](https://img.shields.io/github/v/release/sgaunet/gocrypt?label=)](https://github.com/sgaunet/gocrypt/releases/latest) | Encrypt and decrypt files with AES-128 or AES-256 (GCM) | Security & Crypto |
| [jwt-cli](#jwt-cli) | [![release](https://img.shields.io/github/v/release/sgaunet/jwt-cli?label=)](https://github.com/sgaunet/jwt-cli/releases/latest) | Encode and decode JWT and PASETO tokens | Security & Crypto |
| [restic-age-key](#restic-age-key) | [![release](https://img.shields.io/github/v/release/sgaunet/restic-age-key?label=)](https://github.com/sgaunet/restic-age-key/releases/latest) | Unlock restic repositories with age keys instead of a password | Security & Crypto |
| [helmchart-helper](#helmchart-helper) | [![release](https://img.shields.io/github/v/release/sgaunet/helmchart-helper?label=)](https://github.com/sgaunet/helmchart-helper/releases/latest) | Generate basic Helm charts for Kubernetes applications | Dev tooling |
| [logwrap](#logwrap) | [![release](https://img.shields.io/github/v/release/sgaunet/logwrap?label=)](https://github.com/sgaunet/logwrap/releases/latest) | Command wrapper that prefixes stdout and stderr lines | Dev tooling |
| [scaffold](#scaffold) | [![release](https://img.shields.io/github/v/release/sgaunet/scaffold?label=)](https://github.com/sgaunet/scaffold/releases/latest) | Generate a Go project's tooling, CI and config files | Dev tooling |
| [semver](#semver) | [![release](https://img.shields.io/github/v/release/sgaunet/semver?label=)](https://github.com/sgaunet/semver/releases/latest) | Bump, compare, sort and validate semantic versions | Dev tooling |
| [calcdate](#calcdate) | [![release](https://img.shields.io/github/v/release/sgaunet/calcdate?label=)](https://github.com/sgaunet/calcdate/releases/latest) | Date calculations with an intuitive expression syntax | Utilities |
| [dsn](#dsn) | [![release](https://img.shields.io/github/v/release/sgaunet/dsn?label=)](https://github.com/sgaunet/dsn/releases/latest) | Parse data source names into shell variables | Utilities |
| [gini](#gini) | [![release](https://img.shields.io/github/v/release/sgaunet/gini?label=)](https://github.com/sgaunet/gini/releases/latest) | Read and write keys in INI files | Utilities |
| [mdtohtml](#mdtohtml) | [![release](https://img.shields.io/github/v/release/sgaunet/mdtohtml?label=)](https://github.com/sgaunet/mdtohtml/releases/latest) | Markdown to HTML converter with GitHub-style CSS | Utilities |
| [moraine](#moraine) | [![release](https://img.shields.io/github/v/release/sgaunet/moraine?label=)](https://github.com/sgaunet/moraine/releases/latest) | Organize photos into event folders by capture time and theme | Utilities |

## Tools

### GitLab & Git

#### auto-mr

Automates the merge request / pull request workflow on GitLab, GitHub and self-hosted Forgejo. It pushes the current branch, lets you pick labels, opens the MR/PR with assignee and reviewer, waits for the CI pipeline, merges, and cleans up the branch. It only needs `git`, with no `glab` or `gh` dependency.

```sh
export GITLAB_TOKEN=...   # or GITHUB_TOKEN / FORGEJO_TOKEN
auto-mr                   # run from a committed feature branch
```

[Source](https://github.com/sgaunet/auto-mr) · [Releases](https://github.com/sgaunet/auto-mr/releases) · [Documentation](https://github.com/sgaunet/auto-mr#readme)

#### gitcommit

Creates git commits with a specific date (`YYYY-MM-DD HH:MM:SS`), for example to record offline work. It rejects dates that would break chronological order with the previous commit.

```sh
git add .
gitcommit "2025-02-05 20:19:19" "Add feature X"
```

[Source](https://github.com/sgaunet/gitcommit) · [Releases](https://github.com/sgaunet/gitcommit/releases) · [Documentation](https://github.com/sgaunet/gitcommit#readme)

#### gitlab-backup

Exports a single GitLab project or every project of a group through GitLab's native export API. It stores the archives locally or on S3, with optional [age](https://age-encryption.org) encryption, pre/post hooks and concurrent exports.

```sh
export GITLAB_TOKEN=glpat-xxxxx
gitlab-backup --group-id 456 --output /backup/groups
```

[Source](https://github.com/sgaunet/gitlab-backup) · [Releases](https://github.com/sgaunet/gitlab-backup/releases) · [Documentation](https://github.com/sgaunet/gitlab-backup#readme)

#### gitlab-restore

Companion of `gitlab-backup`: it restores a project from a local or S3 archive into an empty GitLab project, including the repository, wiki, issues, merge requests and labels. It ships from the `gitlab-backup` repository.

```sh
gitlab-restore --config config.yml \
  --archive /path/to/backup.tar.gz \
  --namespace mygroup --project restored-project
```

[Source](https://github.com/sgaunet/gitlab-backup) · [Releases](https://github.com/sgaunet/gitlab-backup/releases) · [Documentation](https://github.com/sgaunet/gitlab-backup#gitlab-restore)

#### gitlab-token-expiration

Lists the expiration dates of GitLab project tokens, group tokens (recursively) and personal access tokens, so that you can spot tokens that are about to expire.

```sh
export GITLAB_TOKEN=yourtoken
gitlab-token-expiration group --id 1234
gitlab-token-expiration pat
```

[Source](https://github.com/sgaunet/gitlab-token-expiration) · [Releases](https://github.com/sgaunet/gitlab-token-expiration/releases) · [Documentation](https://github.com/sgaunet/gitlab-token-expiration#readme)

### AI & MCP

#### askit

Terminal client for OpenAI-compatible chat completion APIs (LM Studio, vLLM, llama.cpp, Ollama, OpenAI). It supports inline `@path` file references, multiple config files and reusable named presets. It is designed for fast workflows such as OCR of scanned documents.

```sh
askit query -p ocr-plain -o scan.txt "@./scan.png"
askit chat -p ocr-md
```

[Source](https://github.com/sgaunet/askit) · [Releases](https://github.com/sgaunet/askit/releases) · [Documentation](https://github.com/sgaunet/askit#readme)

#### gitlab-mcp

[Model Context Protocol](https://modelcontextprotocol.io) server that gives Claude Code access to GitLab: issues, labels, projects, epics and CI/CD pipelines (including job logs).

```sh
export GITLAB_TOKEN=your_personal_access_token
claude mcp add gitlab-mcp -s user -- gitlab-mcp
```

[Source](https://github.com/sgaunet/gitlab-mcp) · [Releases](https://github.com/sgaunet/gitlab-mcp/releases) · [Documentation](https://github.com/sgaunet/gitlab-mcp#readme)

#### postgresql-mcp

[Model Context Protocol](https://modelcontextprotocol.io) server for PostgreSQL. It lets MCP clients list databases, schemas, tables and indexes, describe tables, run read-only queries and explain query plans.

```sh
claude mcp add -s project \
  --env "POSTGRES_URL=postgres://postgres:password@localhost:5432/postgres?sslmode=disable" \
  --transport stdio postgresql postgresql-mcp
```

[Source](https://github.com/sgaunet/postgresql-mcp) · [Releases](https://github.com/sgaunet/postgresql-mcp/releases) · [Documentation](https://github.com/sgaunet/postgresql-mcp#readme)

#### pplx

Unofficial CLI for the [Perplexity API](https://www.perplexity.ai/). It supports one-shot queries and interactive chat, with model, search mode and recency options.

```sh
export PERPLEXITY_API_KEY="your-api-key-here"
pplx query -p "What is the capital of France?"
pplx chat
```

[Source](https://github.com/sgaunet/pplx) · [Releases](https://github.com/sgaunet/pplx/releases) · [Documentation](https://github.com/sgaunet/pplx#readme)

### Security & Crypto

#### gocrypt

Encrypts and decrypts files with AES-128 or AES-256 in GCM mode. The key comes from a file or from the `GOCRYPT_KEY` environment variable. Note that v2 files are not compatible with v1. For new use cases, consider [age](https://github.com/FiloSottile/age).

```sh
gocrypt enc --i input.txt --o encrypted.bin --k keyfile.txt
gocrypt dec --i encrypted.bin --o decrypted.txt --k keyfile.txt
```

[Source](https://github.com/sgaunet/gocrypt) · [Releases](https://github.com/sgaunet/gocrypt/releases) · [Documentation](https://github.com/sgaunet/gocrypt#readme)

#### jwt-cli

Encodes and decodes JWT tokens (HS, ES and RS algorithms) and PASETO tokens (v2 to v4). Claim validation with clock-skew tolerance is optional.

```sh
jwt-cli encode hs256 --secret "$SECRET" --payload '{ "email": "me@example.com" }'
jwt-cli decode hs256 --secret "$SECRET" --token "$TOKEN" --validate-claims
```

[Source](https://github.com/sgaunet/jwt-cli) · [Releases](https://github.com/sgaunet/jwt-cli/releases) · [Documentation](https://github.com/sgaunet/jwt-cli#readme)

#### restic-age-key

Uses asymmetric [age](https://age-encryption.org/) keys instead of a password to unlock [restic](https://restic.net) repositories. It can initialize repositories and add, list or set keys for several recipients.

```sh
export RESTIC_REPOSITORY=/path/to/repo
export RESTIC_PASSWORD_COMMAND='restic-age-key password'
export RESTIC_AGE_IDENTITY_FILE=/path/to/key.txt
restic backup ~/Documents
```

[Source](https://github.com/sgaunet/restic-age-key) · [Releases](https://github.com/sgaunet/restic-age-key/releases) · [Documentation](https://github.com/sgaunet/restic-age-key#readme)

### Dev tooling

#### helmchart-helper

Quickly generates the skeleton of a Helm chart (Chart.yaml, values.yaml, templates) with the Kubernetes manifests you choose: deployment, service, ingress, configmap, HPA, and so on.

```sh
helmchart-helper -n myapp -o ./charts/myapp -deploy -svc -ing
```

[Source](https://github.com/sgaunet/helmchart-helper) · [Releases](https://github.com/sgaunet/helmchart-helper/releases) · [Documentation](https://github.com/sgaunet/helmchart-helper#readme)

#### logwrap

Wraps any command and prefixes each line of its stdout and stderr in real time with configurable information: timestamp, log level, user, PID or colors. It reads YAML configuration files and accepts CLI overrides.

```sh
logwrap -colors -utc make test
logwrap -template "[{{.Timestamp}}] " ls -la
```

[Source](https://github.com/sgaunet/logwrap) · [Releases](https://github.com/sgaunet/logwrap/releases) · [Documentation](https://github.com/sgaunet/logwrap#readme)

#### scaffold

Generates a Go project's tooling, CI and config files (GoReleaser, Taskfile, golangci-lint, pre-commit, GitHub/GitLab/Forgejo workflows) from templates embedded in the binary. It proposes defaults in an interactive form.

```sh
scaffold generate                           # inside an existing Go repository
scaffold generate --config ./ci/scaffold.yml
```

[Source](https://github.com/sgaunet/scaffold) · [Releases](https://github.com/sgaunet/scaffold/releases) · [Documentation](https://github.com/sgaunet/scaffold#readme)

#### semver

Static CLI to bump, compare, sort, validate and constraint-check [semantic versions](https://semver.org). It is pipeline friendly, with data on stdout, documented exit codes and JSON output.

```sh
semver minor v1.2.3                 # v1.3.0
semver satisfies v1.5.0 '^1.2.0'    # true (exit 0)
```

[Source](https://github.com/sgaunet/semver) · [Releases](https://github.com/sgaunet/semver/releases) · [Documentation](https://github.com/sgaunet/semver#readme)

### Utilities

#### calcdate

Performs date calculations with an expression syntax (`today +1d`, `today | +1M | endOfMonth`), iterates over ranges and supports several output formats (ISO, SQL, timestamp). It is handy for building database query windows and maintenance schedules.

```sh
calcdate --expr "today | +1M | endOfMonth"
calcdate --expr "today...+7d" --each=1d --format=sql
```

[Source](https://github.com/sgaunet/calcdate) · [Releases](https://github.com/sgaunet/calcdate/releases) · [Documentation](https://github.com/sgaunet/calcdate#readme)

#### dsn

Parses data source names (`scheme://user:password@host:port/dbname`) and exports their components as shell variables for use in scripts.

```sh
eval $(dsn setenv --d "pg://login:password@host/mydb?timeout=1000" --pr DB_)
echo $DB_HOST
```

[Source](https://github.com/sgaunet/dsn) · [Releases](https://github.com/sgaunet/dsn/releases) · [Documentation](https://github.com/sgaunet/dsn#readme)

#### gini

Reads, sets and deletes keys and sections of INI files from the command line, which is useful for configuration management in shell scripts.

```sh
gini get --i config.ini --s section --k key
gini set --i config.ini --s section --k key --v value --c
```

[Source](https://github.com/sgaunet/gini) · [Releases](https://github.com/sgaunet/gini/releases) · [Documentation](https://github.com/sgaunet/gini#readme)

#### mdtohtml

Converts Markdown to HTML with GitHub-style CSS. It supports batch and recursive conversion, syntax validation and optional smart typography.

```sh
mdtohtml README.md README.html
mdtohtml batch ./docs --recursive --out-dir ./html
```

[Source](https://github.com/sgaunet/mdtohtml) · [Releases](https://github.com/sgaunet/mdtohtml/releases) · [Documentation](https://github.com/sgaunet/mdtohtml#readme)

#### moraine

Automatic photo organizer: it groups photos (JPEG, PNG, HEIC, RAW) into events by capture time, assigns each event a theme (optionally with an Ollama vision model), and copies the photos into a `theme/year/date` layout. Originals are never modified, and runs can be dry-run, incremental and undone. Requires `exiftool`.

```sh
moraine sort --dry-run --dest ~/Photos/sorted ~/Photos/2025
moraine sort --dest ~/Photos/sorted ~/Photos/2025
```

[Source](https://github.com/sgaunet/moraine) · [Releases](https://github.com/sgaunet/moraine/releases) · [Documentation](https://github.com/sgaunet/moraine#readme)

## Updating

```sh
brew update
brew upgrade
```

## Contributing

The casks in this tap are generated automatically by [GoReleaser](https://goreleaser.com) on each release, so don't edit them by hand. To report a bug or request a feature, open an issue in the repository of the tool concerned (see the *Source* links above).
