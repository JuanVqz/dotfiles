# AGENTS.md

## Global Agent Instructions

- Never add yourself as co-author in git commits or pull requests.
- At the start of every conversation, read AGENTS.md if it exists in the current working directory.
- For GitHub-related requests, use GitHub CLI (`gh`) by default.
- This includes inspecting issues/PRs/repos/workflows and creating repos/issues/PRs/releases.
- Use raw GitHub API calls only when `gh` cannot perform the task.
- When asked to prepare a draft PR description/body, create the file at `.notes/messages/<PR_NUMBER>_body.md`.
- Keep that file as PR-body-only Markdown suitable for `gh pr create --draft --body-file`.
- Reuse the same suffix for every PR body file: `_body.md`.
- When skills (e.g., superpowers) default to saving files under a `docs/superpowers/` or similar plugin-named subdirectory, use the project's own directory structure instead (e.g., `docs/plans/`, `docs/specs/`). Skills should integrate into the project flow, not impose their own namespace.
