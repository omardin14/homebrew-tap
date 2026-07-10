# Homebrew Tap for Scrum Agent

> [!WARNING]
> **scrum-agent is no longer installable via Homebrew.**
> A required transitive dependency (`sqlite-vec`, via `langgraph-checkpoint-sqlite`)
> publishes only wheels and no source distribution, so Homebrew's source-build
> model cannot resolve the dependency tree. The formula in this tap is
> intentionally disabled.

## Install (use uv or pipx instead)

```bash
uv tool install scrum-agent     # recommended
# or
pipx install scrum-agent
```

Both pull prebuilt wheels straight from PyPI and isolate the app in its own
environment. See the [main project README](https://github.com/omardin14/scrum-planning-ai-agent#-quick-start)
for full instructions, optional extras (voice input, extra providers), and setup.

## Post-install

```bash
scrum-agent --setup   # configure your API key
scrum-agent           # launch the interactive planner
```

## Headless / CI

```bash
scrum-agent --non-interactive --description "Build a todo app" --output json
```
