# Homebrew Tap for Scrum Agent

Homebrew formulae for [scrum-agent](https://github.com/omardin14/scrum-jira-agent) — an AI-powered Scrum Master CLI.

## Install

```bash
brew tap omardin14/tap
brew install scrum-agent
```

## Post-install

```bash
scrum-agent --setup   # configure your API key
scrum-agent           # launch the interactive planner
```

## Headless / CI

```bash
scrum-agent --non-interactive --description "Build a todo app" --output json
```
