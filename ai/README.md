# AI Agent Configuration

Central source of truth for all AI agent instructions, skills, and MCP config across Claude Code, OpenCode, Codex, and Claude Desktop.

## Directory Structure

```
~/.dotfiles/ai/
├── agents                   # sync/unsync script (like stow)
├── AGENTS.md                # shared instructions for all tools
├── bin/
│   └── rails-mcp-server    # wrapper (uses asdf shim, no hardcoded gem paths)
├── skills/
│   └── superpowers/         # git submodule → github.com/obra/superpowers
└── README.md
```

## Setup

```bash
# Create all symlinks
~/.dotfiles/ai/agents sync

# Remove all symlinks
~/.dotfiles/ai/agents unsync
```

## What the script manages (symlinks)

| Symlink | Target |
|---|---|
| `~/.claude/CLAUDE.md` | `AGENTS.md` |
| `~/.codex/AGENTS.md` | `AGENTS.md` |
| `~/.codex/skills/superpowers` | `skills/superpowers` |
| `~/.config/opencode/skills/superpowers` | `skills/superpowers/skills` |
| `~/.config/opencode/plugins/superpowers.js` | `skills/superpowers/.opencode/plugins/superpowers.js` |

## What the script does NOT manage

- **Claude Code MCP servers** — managed via `claude mcp add --scope user`, stored in `~/.claude.json`
- **Claude Desktop** (`~/Library/Application Support/Claude/claude_desktop_config.json`) — mixes MCP config with app preferences, so it can't be symlinked. Add MCP servers manually:
  ```json
  "mcpServers": {
    "rails-mcp-server": {
      "command": "/Users/juan/.dotfiles/ai/bin/rails-mcp-server",
      "args": []
    }
  }
  ```
- **Codex config** (`~/.codex/config.toml`) — model and trusted projects are machine-specific
- **OpenCode MCP servers** (`~/.config/opencode/opencode.json`) — edit directly
- **Cursor MCP servers** (`~/.cursor/mcp.json`) — may contain secrets, edit directly

## Claude Code alias

The `claude` function in `~/.aliases` automatically loads all skills from `ai/skills/` as plugins.

## Updating superpowers

```bash
cd ~/.dotfiles
git submodule update --remote ai/skills/superpowers
git add ai/skills/superpowers
git commit -m "chore: update superpowers"
```

## Adding new skills

All skills are managed as git submodules:

```bash
cd ~/.dotfiles
git submodule add <repo-url> ai/skills/<name>
git commit -m "feat: add <name> skill"
./ai/agents sync
```

## First time cloning dotfiles

```bash
git clone --recurse-submodules git@github.com:JuanVqz/dotfiles.git ~/.dotfiles
cd ~/.dotfiles/ai && ./agents sync
```
