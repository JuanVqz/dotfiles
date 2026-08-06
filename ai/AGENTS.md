# AGENTS.md

## Global Agent Instructions

- Never add yourself as co-author in git commits or pull requests.
- At the start of every conversation, read AGENTS.md if it exists in the current working directory.
- For GitHub-related requests, use GitHub CLI (`gh`) by default.
- This includes inspecting issues/PRs/repos/workflows and creating repos/issues/PRs/releases.
- Use raw GitHub API calls only when `gh` cannot perform the task.
- When asked to prepare a draft PR description/body, create the file at `notes/messages/<PR_NUMBER>_body.md`.
- Keep that file as PR-body-only Markdown suitable for `gh pr create --draft --body-file`.
- Reuse the same suffix for every PR body file: `_body.md`.
- When plugins default to saving files under their own subdirectory, use the project's own directory structure instead (e.g., `docs/plans/`, `docs/specs/`). Plugins should integrate into the project flow, not impose their own namespace.
- Never commit or push directly to `main`. Always create a feature branch for any code changes, even when on main: `git checkout -b feature/<name>`. Work on the branch in the main directory and open a PR.
- After the work is done (PR merged or branch no longer needed), clean up: `git branch -d feature/<name>`.
- Never add "Generated with Claude Code" or similar attribution lines to PR descriptions.
- When creating git worktrees, place them under a `.worktrees/` directory in the project root (e.g., `project_name/.worktrees/new-worktree-here`). Create the `.worktrees/` folder if it doesn't exist.
- Never use em dashes (—) in text output. Use commas, periods, or rewrite the sentence instead.
- Avoid the jargon "no-op" / "no-ops". Say plainly what it means instead, e.g. "had no effect", "did nothing", "changes no behavior".
- When drafting messages intended for copy-paste (Slack, email, PR comments, issue bodies, etc.), do not wrap the message in Markdown blockquote (`>`) formatting. Present the message as plain lines so the user can copy-paste it directly.
