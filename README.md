# video-lens

Claude Code skills vendored from [kar2phi/video-lens](https://github.com/kar2phi/video-lens)
(MIT, commit `c3f42be`).

- `.claude/skills/video-lens/` — turn a YouTube URL into an HTML report (summary, key points, timestamped outline, embedded player).
- `.claude/skills/video-lens-gallery/` — browse and search saved reports.

Claude Code picks these up automatically as project skills when run in this repo.
Use them with `/video-lens <youtube-url>` or just paste a YouTube link.

The only local change is that the script lookup in each `SKILL.md` also checks
`$CLAUDE_PROJECT_DIR/.claude` (this repo) before `~/.claude` and other agent dirs.

## Setup

```bash
pip install -r requirements.txt
# Optional (Apple Silicon): local Whisper fallback for videos without captions
pip install mlx-whisper && brew install ffmpeg
```

To use it outside this repo, copy both skill folders into `~/.claude/skills/`.
Reports are written to `~/Downloads/video-lens/`.
