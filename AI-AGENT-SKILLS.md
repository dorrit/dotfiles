# AI Agent Skills Inventory

> **Auto-generated** — a complete catalog of every AI agent skill installed on this machine.
> **Total: 538 skills** across 14 sources.
>
> Last updated: 2026-11-25

## Table of Contents

- [Matt Pocock / Shared Agent Skills](#matt-pocock--shared-agent-skills) (47)
- [Claude Code Plugins](#claude-code-plugins) (14)
- [OpenAI Codex Skills](#openai-codex-skills) (6)
- [OpenCode Skills](#opencode-skills) (2)
- [GitHub Copilot Plugins](#github-copilot-plugins) (1)
- [Antigravity (Gemini) Built-in Skills](#antigravity-gemini-built-in-skills) (13)
- [GitHub Agent Skills](#github-agent-skills) (1)
- [Hermes Agent Skills (Community)](#hermes-agent-skills-community) (89)
- [Hermes Profile: thedesign](#hermes-profile-thedesign) (90)
- [Hermes Profile: selulosa](#hermes-profile-selulosa) (95)
- [Hermes Profile: work](#hermes-profile-work) (92)
- [Hermes Native Skills](#hermes-native-skills) (86)
- [Development Projects](#development-projects) (1)
- [Dotfiles (Claude Skills)](#dotfiles-claude-skills) (1)

## Matt Pocock / Shared Agent Skills

> **Source:** `~/.agents/skills` — Cross-agent skills shared via `~/.agents/skills/`, symlinked into Claude Code and Hermes

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **agent-reach** | MUST USE when user wants to 调研/research/搜索/search/查/找/look up anything on the internet — e.g. 全网调研 X / 帮我调研一下 X / 查一下... |
| 2 | **ask-matt** | Ask which skill or flow fits your situation. A router over the skills in this repo. |
| 3 | **batch-grill-me** | A relentless interview that asks every frontier question at once, round by round. |
| 4 | **claude-handoff** | Hand the current conversation off to a fresh background agent that picks up the work immediately. |
| 5 | **code-review** | Review the changes since a fixed point (commit, branch, tag, or merge-base) along two axes — Standards (does the code... |
| 6 | **codebase-design** | Shared vocabulary for designing deep modules. Use when the user wants to design or improve a module's interface, find... |
| 7 | **design-an-interface** | Generate multiple radically different interface designs for a module using parallel sub-agents. Use when user wants t... |
| 8 | **design-taste-frontend** | Anti-slop frontend skill for landing pages, portfolios, and redesigns. The agent reads the brief, infers the right de... |
| 9 | **diagnosing-bugs** | Diagnosis loop for hard bugs and performance regressions. Use when the user says "diagnose"/"debug this", or reports ... |
| 10 | **domain-modeling** | Build and sharpen a project's domain model. Use when the user wants to pin down domain terminology or a ubiquitous la... |
| 11 | **edit-article** | Edit and improve articles by restructuring sections, improving clarity, and tightening prose. Use when user wants to ... |
| 12 | **find-skills** | Helps users discover and install agent skills when they ask questions like "how do I do X", "find a skill for X", "is... |
| 13 | **git-guardrails-claude-code** | Set up Claude Code hooks to block dangerous git commands (push, reset --hard, clean, branch -D, etc.) before they exe... |
| 14 | **go-code-style** | Enforces the operator's Go syntax and formatting conventions. Use every time you read, write, edit, refactor, review,... |
| 15 | **grill-me** | A relentless interview to sharpen a plan or design. |
| 16 | **grill-with-docs** | A relentless interview to sharpen a plan or design, which also creates docs (ADR's and glossary) as we go. |
| 17 | **grilling** | Grill the user relentlessly about a plan, decision, or idea. Use when the user wants to stress-test their thinking, o... |
| 18 | **handoff** | Compact the current conversation into a handoff document for another agent to pick up. |
| 19 | **image-to-code** | Elite website image-to-code skill for Codex. For visually important web tasks, it must first generate the design imag... |
| 20 | **implement** | Implement a piece of work based on a spec or set of tickets. |
| 21 | **improve-codebase-architecture** | Scan a codebase for deepening opportunities, present them as a visual HTML report, then grill through whichever one y... |
| 22 | **loop-me** | Grill me about specs for the workflows I want to build, within this workspace. |
| 23 | **migrate-to-shoehorn** | Migrate test files from `as` type assertions to @total-typescript/shoehorn. Use when user mentions shoehorn, wants to... |
| 24 | **obsidian-vault** | Search, create, and manage notes in the Obsidian vault with wikilinks and index notes. Use when user wants to find, c... |
| 25 | **prototype** | Build a throwaway prototype to answer a design question. Use when the user wants to sanity-check whether a state mode... |
| 26 | **qa** | Interactive QA session where user reports bugs or issues conversationally, and the agent files GitHub issues. Explore... |
| 27 | **request-refactor-plan** | Create a detailed refactor plan with tiny commits via user interview, then file it as a GitHub issue. Use when user w... |
| 28 | **research** | Investigate a question against high-trust primary sources and capture the findings as a Markdown file in the repo. Us... |
| 29 | **resolving-merge-conflicts** | Use when you need to resolve an in-progress git merge/rebase conflict. |
| 30 | **scaffold-exercises** | Create exercise directory structures with sections, problems, solutions, and explainers that pass linting. Use when u... |
| 31 | **setup-matt-pocock-skills** | Configure this repo for the engineering skills — set up its issue tracker, triage label vocabulary, and domain doc la... |
| 32 | **setup-pre-commit** | Set up Husky pre-commit hooks with lint-staged (Prettier), type checking, and tests in the current repo. Use when use... |
| 33 | **setup-ts-deep-modules** | Wire dependency-cruiser into a TypeScript repo so each package is a deep module — implementation hidden in subfolders... |
| 34 | **tdd** | Test-driven development. Use when the user wants to build features or fix bugs test-first, mentions "red-green-refact... |
| 35 | **teach** | Teach the user a new skill or concept, within this workspace. |
| 36 | **to-questionnaire** | Turn a decision you can't fully answer into a questionnaire for someone else to fill in. |
| 37 | **to-spec** | Turn the current conversation into a spec and publish it to the project issue tracker — no interview, just synthesis ... |
| 38 | **to-tickets** | Break a plan, spec, or the current conversation into a set of tracer-bullet tickets, each declaring its blocking edge... |
| 39 | **triage** | Move issues and external PRs through a state machine of triage roles — categorise, verify, grill if needed, and write... |
| 40 | **ubiquitous-language** | Extract a DDD-style ubiquitous language glossary from the current conversation, flagging ambiguities and proposing ca... |
| 41 | **wayfinder** | Plan a huge chunk of work — more than one agent session can hold — as a shared map of decision tickets on your issue ... |
| 42 | **web-design-guidelines** | Review UI code for Web Interface Guidelines compliance. Use when asked to "review my UI", "check accessibility", "aud... |
| 43 | **wizard** | Generate an interactive bash wizard that walks a human through a manual procedure — third-party setup, a one-off migr... |
| 44 | **writing-beats** | Writing, exploit — assemble raw material into a journey of beats, grounding each term before a beat leans on it. |
| 45 | **writing-fragments** | Writing, explore — mine raw fragments, no structure yet. |
| 46 | **writing-great-skills** | Reference for writing and editing skills well — the vocabulary and principles that make a skill predictable. |
| 47 | **writing-shape** | Writing, exploit — shape raw material into an article, paragraph by paragraph. |

## Claude Code Plugins

> **Source:** `~/.claude/plugins` — Skills bundled with Claude Code plugins from the official marketplace

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **agent-development** | This skill should be used when the user asks to "create an agent", "add an agent", "write a subagent", "agent frontma... |
| 2 | **claude-automation-recommender** | Analyze a codebase and recommend Claude Code automations (hooks, subagents, skills, plugins, MCP servers). Use when u... |
| 3 | **claude-md-improver** | Audit and improve CLAUDE.md files in repositories. Use when user asks to check, audit, update, improve, or fix CLAUDE... |
| 4 | **command-development** | This skill should be used when the user asks to "create a slash command", "add a command", "write a custom command", ... |
| 5 | **example-skill** | This skill should be used when the user asks to "demonstrate skills", "show skill format", "create a skill template",... |
| 6 | **frontend-design** | Create distinctive, production-grade frontend interfaces with high design quality. Use this skill when the user asks ... |
| 7 | **hook-development** | This skill should be used when the user asks to "create a hook", "add a PreToolUse/PostToolUse/Stop hook", "validate ... |
| 8 | **mcp-integration** | This skill should be used when the user asks to "add MCP server", "integrate MCP", "configure MCP in plugin", "use .m... |
| 9 | **playground** | Creates interactive HTML playgrounds — self-contained single-file explorers that let users configure something visual... |
| 10 | **plugin-settings** | This skill should be used when the user asks about "plugin settings", "store plugin configuration", "user-configurabl... |
| 11 | **plugin-structure** | This skill should be used when the user asks to "create a plugin", "scaffold a plugin", "understand plugin structure"... |
| 12 | **skill-development** | This skill should be used when the user wants to "create a skill", "add a skill to plugin", "write a new skill", "imp... |
| 13 | **stripe-best-practices** | Best practices for building Stripe integrations. Use when implementing payment processing, checkout flows, subscripti... |
| 14 | **writing-hookify-rules** | This skill should be used when the user asks to "create a hookify rule", "write a hook rule", "configure hookify", "a... |

## OpenAI Codex Skills

> **Source:** `~/.codex/skills` — Built-in system skills for OpenAI Codex CLI

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **imagegen** | Generate or edit raster images when the task benefits from AI-created bitmap visuals such as photos, illustrations, t... |
| 2 | **openai-docs** | Use for Codex models/pricing, scheduled tasks, skills, settings, setup, troubleshooting, customization, automations, ... |
| 3 | **plugin-creator** | Create and scaffold plugin directories for Codex with a required `.codex-plugin/plugin.json`, optional plugin folders... |
| 4 | **review-agent** | Perform a read-only, defect-first review of a specified code change and return every actionable finding. Use when ano... |
| 5 | **skill-creator** | Create or update a Codex skill with appropriately scoped instructions and any needed supporting resources. |
| 6 | **skill-installer** | Install Codex skills into $CODEX_HOME/skills from a curated list or a GitHub repo path. Use when a user asks to list ... |

## OpenCode Skills

> **Source:** `~/.config/opencode/skills` — Skills for the OpenCode terminal IDE

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **graphify** | Use for any question about a codebase, its architecture, file relationships, or project content — especially when gra... |
| 2 | **impeccable** | Use when the user wants to design, redesign, shape, critique, audit, polish, clarify, distill, harden, optimize, adap... |

## GitHub Copilot Plugins

> **Source:** `~/.copilot` — Skills installed via GitHub Copilot plugin system

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **frontend-design** | Guidance for distinctive, intentional visual design when building new UI or reshaping an existing one. Helps with aes... |

## Antigravity (Gemini) Built-in Skills

> **Source:** `~/.gemini/antigravity-cli/builtin/skills` — Built-in skills shipped with the Antigravity CLI

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **agy-customizations** | Comprehensive guide and reference for the Antigravity Customization System. Use to explain how customizations work, t... |
| 2 | **antigravity-guide** | Provides a comprehensive guide, quick reference, and sitemap for Google Antigravity (AGY), including the Antigravity ... |
| 3 | **automation** | Interactive guide to design and create a scheduled background automation. Use this skill when the user wants to creat... |
| 4 | **generative_ui** | How to render rich interactive HTML widgets inline in the chat or as standalone artifacts. Use this skill when you wa... |
| 5 | **migrate-agent-settings** | Migrates the user's MCP servers, skills, slash commands, subagents, and instruction files from other coding agents (C... |
| 6 | **migrate-workflows** | Automatically migrate legacy workflows to modern skills across global and workspace configurations. Scans for existin... |
| 7 | **permissioned-github** | Guidelines for interacting with GitHub and request permissions from the user when commands fail due to restrictions i... |
| 8 | **plugin** | How to manage and create plugins — namespaced bundles of skills, agents, rules, MCP servers and hooks that install, e... |
| 9 | **run-workflow** | How to write and run a dynamic workflow script with the `run_workflow` tool: a Python script that orchestrates many a... |
| 10 | **swarm** | (Preview & Quota Heavy) Run a swarm: several agents working in parallel on one task, each in its own conversation, co... |
| 11 | **swarm_monitor** | ONLY for the native-swarm worker whose brief says it is the monitor. On a timer, it checks whether the whole swarm ha... |
| 12 | **swarm_narrator** | ONLY for the native-swarm worker whose brief says it is the narrator. It watches the board and keeps the facts behind... |
| 13 | **ui-plugin-navigation** | Discover UI plugin panels relevant to the current task and surface a one-click pill in chat to open (toggle) them in ... |

## GitHub Agent Skills

> **Source:** `~/.github/skills` — Skills for GitHub-based AI agents

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **impeccable** | Use when the user wants to design, redesign, shape, critique, audit, polish, clarify, distill, harden, optimize, adap... |

## Hermes Agent Skills (Community)

> **Source:** `~/.hermes/hermes-agent/skills` — Community skills bundled with the Hermes agent repo

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **airtable** | Airtable REST API via curl. Records CRUD, filters, upserts. |
| 2 | **apple-notes** | Manage Apple Notes via memo CLI: create, search, edit. |
| 3 | **apple-reminders** | Apple Reminders via remindctl: add, list, complete. |
| 4 | **architecture-diagram** | Dark-themed SVG architecture/cloud/infra diagrams as HTML. |
| 5 | **arxiv** | Search arXiv papers by keyword, author, category, or ID. |
| 6 | **ascii-art** | ASCII art: pyfiglet, cowsay, boxes, image-to-ascii. |
| 7 | **ascii-video** | ASCII video: convert video/audio to colored ASCII MP4/GIF. |
| 8 | **audiocraft-audio-generation** | AudioCraft: MusicGen text-to-music, AudioGen text-to-sound. |
| 9 | **baoyu-article-illustrator** | Article illustrations: type × style × palette consistency. |
| 10 | **baoyu-comic** | Knowledge comics (知识漫画): educational, biography, tutorial. |
| 11 | **baoyu-infographic** | Infographics: 21 layouts x 21 styles (信息图, 可视化). |
| 12 | **blogwatcher** | Monitor blogs and RSS/Atom feeds via blogwatcher-cli tool. |
| 13 | **claude-code** | Delegate coding to Claude Code CLI (features, PRs). |
| 14 | **claude-design** | Design one-off HTML artifacts (landing, deck, prototype). |
| 15 | **codebase-inspection** | Inspect codebases w/ pygount: LOC, languages, ratios. |
| 16 | **codex** | Delegate coding to OpenAI Codex CLI (features, PRs). |
| 17 | **comfyui** | Generate images, video, and audio with ComfyUI — install, launch, manage nodes/models, run workflows with parameter i... |
| 18 | **debugging-hermes-tui-commands** | Debug Hermes TUI slash commands: Python, gateway, Ink UI. |
| 19 | **design-md** | Author/validate/export Google's DESIGN.md token spec files. |
| 20 | **dogfood** | Exploratory QA of web apps: find bugs, evidence, reports. |
| 21 | **dspy** | DSPy: declarative LM programs, auto-optimize prompts, RAG. |
| 22 | **evaluating-llms-harness** | lm-eval-harness: benchmark LLMs (MMLU, GSM8K, etc.). |
| 23 | **excalidraw** | Hand-drawn Excalidraw JSON diagrams (arch, flow, seq). |
| 24 | **findmy** | Track Apple devices/AirTags via FindMy.app on macOS. |
| 25 | **gif-search** | Search/download GIFs from Tenor via curl + jq. |
| 26 | **github-auth** | GitHub auth setup: HTTPS tokens, SSH keys, gh CLI login. |
| 27 | **github-code-review** | Review PRs: diffs, inline comments via gh or REST. |
| 28 | **github-issues** | Create, triage, label, assign GitHub issues via gh or REST. |
| 29 | **github-pr-workflow** | GitHub PR lifecycle: branch, commit, open, CI, merge. |
| 30 | **github-repo-management** | Clone/create/fork repos; manage remotes, releases. |
| 31 | **godmode** | Jailbreak LLMs: Parseltongue, GODMODE, ULTRAPLINIAN. |
| 32 | **google-workspace** | Gmail, Calendar, Drive, Docs, Sheets via gws CLI or Python. |
| 33 | **heartmula** | HeartMuLa: Suno-like song generation from lyrics + tags. |
| 34 | **hermes-agent** | Configure, extend, or contribute to Hermes Agent. |
| 35 | **hermes-agent-skill-authoring** | Author in-repo SKILL.md: frontmatter, validator, structure. |
| 36 | **himalaya** | Himalaya CLI: IMAP/SMTP email from terminal. |
| 37 | **huggingface-hub** | HuggingFace hf CLI: search/download/upload models, datasets. |
| 38 | **humanizer** | Humanize text: strip AI-isms and add real voice. |
| 39 | **ideation** | Generate project ideas via creative constraints. |
| 40 | **imessage** | Send and receive iMessages/SMS via the imsg CLI on macOS. |
| 41 | **jupyter-live-kernel** | Iterative Python via live Jupyter kernel (hamelnb). |
| 42 | **kanban-codex-lane** | Use when a Hermes Kanban worker wants to run Codex CLI as an isolated implementation lane while Hermes keeps ownershi... |
| 43 | **kanban-orchestrator** | Decomposition playbook + anti-temptation rules for an orchestrator profile routing work through Kanban. The "don't do... |
| 44 | **kanban-worker** | Pitfalls, examples, and edge cases for Hermes Kanban workers. The lifecycle itself is auto-injected into every worker... |
| 45 | **linear** | Linear: manage issues, projects, teams via GraphQL + curl. |
| 46 | **llama-cpp** | llama.cpp local GGUF inference + HF Hub model discovery. |
| 47 | **llm-wiki** | Karpathy's LLM Wiki: build/query interlinked markdown KB. |
| 48 | **macos-computer-use** | Drive the macOS desktop in the background — screenshots, mouse, keyboard, scroll, drag — without stealing the user's ... |
| 49 | **manim-video** | Manim CE animations: 3Blue1Brown math/algo videos. |
| 50 | **maps** | Geocode, POIs, routes, timezones via OpenStreetMap/OSRM. |
| 51 | **minecraft-modpack-server** | Host modded Minecraft servers (CurseForge, Modrinth). |
| 52 | **nano-pdf** | Edit PDF text/typos/titles via nano-pdf CLI (NL prompts). |
| 53 | **native-mcp** | MCP client: connect servers, register tools (stdio/HTTP). |
| 54 | **node-inspect-debugger** | Debug Node.js via --inspect + Chrome DevTools Protocol CLI. |
| 55 | **notion** | Notion API + ntn CLI: pages, databases, markdown, Workers. |
| 56 | **obliteratus** | OBLITERATUS: abliterate LLM refusals (diff-in-means). |
| 57 | **obsidian** | Read, search, create, and edit notes in the Obsidian vault. |
| 58 | **ocr-and-documents** | Extract text from PDFs/scans (pymupdf, marker-pdf). |
| 59 | **opencode** | Delegate coding to OpenCode CLI (features, PR review). |
| 60 | **openhue** | Control Philips Hue lights, scenes, rooms via OpenHue CLI. |
| 61 | **p5js** | p5.js sketches: gen art, shaders, interactive, 3D. |
| 62 | **pixel-art** | Pixel art w/ era palettes (NES, Game Boy, PICO-8). |
| 63 | **plan** | Plan mode: write markdown plan to .hermes/plans/, no exec. |
| 64 | **pokemon-player** | Play Pokemon via headless emulator + RAM reads. |
| 65 | **polymarket** | Query Polymarket: markets, prices, orderbooks, history. |
| 66 | **popular-web-designs** | 54 real design systems (Stripe, Linear, Vercel) as HTML/CSS. |
| 67 | **powerpoint** | Create, read, edit .pptx decks, slides, notes, templates. |
| 68 | **pretext** | Use when building creative browser demos with @chenglou/pretext — DOM-free text layout for ASCII art, typographic flo... |
| 69 | **python-debugpy** | Debug Python: pdb REPL + debugpy remote (DAP). |
| 70 | **requesting-code-review** | Pre-commit review: security scan, quality gates, auto-fix. |
| 71 | **research-paper-writing** | Write ML papers for NeurIPS/ICML/ICLR: design→submit. |
| 72 | **segment-anything-model** | SAM: zero-shot image segmentation via points, boxes, masks. |
| 73 | **serving-llms-vllm** | vLLM: high-throughput LLM serving, OpenAI API, quantization. |
| 74 | **sketch** | Throwaway HTML mockups: 2-3 design variants to compare. |
| 75 | **songsee** | Audio spectrograms/features (mel, chroma, MFCC) via CLI. |
| 76 | **songwriting-and-ai-music** | Songwriting craft and Suno AI music prompts. |
| 77 | **spike** | Throwaway experiments to validate an idea before build. |
| 78 | **spotify** | Spotify: play, search, queue, manage playlists and devices. |
| 79 | **subagent-driven-development** | Execute plans via delegate_task subagents (2-stage review). |
| 80 | **systematic-debugging** | 4-phase root cause debugging: understand bugs before fixing. |
| 81 | **teams-meeting-pipeline** | Operate the Teams meeting summary pipeline via Hermes CLI — summarize meetings, inspect pipeline status, replay jobs,... |
| 82 | **test-driven-development** | TDD: enforce RED-GREEN-REFACTOR, tests before code. |
| 83 | **touchdesigner-mcp** | Control a running TouchDesigner instance via twozero MCP — create operators, set parameters, wire connections, execut... |
| 84 | **webhook-subscriptions** | Webhook subscriptions: event-driven agent runs. |
| 85 | **weights-and-biases** | W&B: log ML experiments, sweeps, model registry, dashboards. |
| 86 | **writing-plans** | Write implementation plans: bite-sized tasks, paths, code. |
| 87 | **xurl** | X/Twitter via xurl CLI: post, search, DM, media, v2 API. |
| 88 | **youtube-content** | YouTube transcripts to summaries, threads, blogs. |
| 89 | **yuanbao** | Yuanbao (元宝) groups: @mention users, query info/members. |

## Hermes Profile: thedesign

> **Source:** `~/.hermes/profiles/thedesign/skills` — Skills specific to the `thedesign` Hermes profile

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **airtable** | Airtable REST API via curl. Records CRUD, filters, upserts. |
| 2 | **apple-notes** | Manage Apple Notes via memo CLI: create, search, edit. |
| 3 | **apple-reminders** | Apple Reminders via remindctl: add, list, complete. |
| 4 | **architecture-diagram** | Dark-themed SVG architecture/cloud/infra diagrams as HTML. |
| 5 | **arxiv** | Search arXiv papers by keyword, author, category, or ID. |
| 6 | **ascii-art** | ASCII art: pyfiglet, cowsay, boxes, image-to-ascii. |
| 7 | **ascii-video** | ASCII video: convert video/audio to colored ASCII MP4/GIF. |
| 8 | **audiocraft-audio-generation** | AudioCraft: MusicGen text-to-music, AudioGen text-to-sound. |
| 9 | **baoyu-article-illustrator** | Article illustrations: type × style × palette consistency. |
| 10 | **baoyu-comic** | Knowledge comics (知识漫画): educational, biography, tutorial. |
| 11 | **baoyu-infographic** | Infographics: 21 layouts x 21 styles (信息图, 可视化). |
| 12 | **blogwatcher** | Monitor blogs and RSS/Atom feeds via blogwatcher-cli tool. |
| 13 | **claude-code** | Delegate coding to Claude Code CLI (features, PRs). |
| 14 | **claude-design** | Design one-off HTML artifacts (landing, deck, prototype). |
| 15 | **codebase-inspection** | Inspect codebases w/ pygount: LOC, languages, ratios. |
| 16 | **codex** | Delegate coding to OpenAI Codex CLI (features, PRs). |
| 17 | **comfyui** | Generate images, video, and audio with ComfyUI — install, launch, manage nodes/models, run workflows with parameter i... |
| 18 | **debugging-hermes-tui-commands** | Debug Hermes TUI slash commands: Python, gateway, Ink UI. |
| 19 | **design-md** | Author/validate/export Google's DESIGN.md token spec files. |
| 20 | **dogfood** | Exploratory QA of web apps: find bugs, evidence, reports. |
| 21 | **dspy** | DSPy: declarative LM programs, auto-optimize prompts, RAG. |
| 22 | **evaluating-llms-harness** | lm-eval-harness: benchmark LLMs (MMLU, GSM8K, etc.). |
| 23 | **excalidraw** | Hand-drawn Excalidraw JSON diagrams (arch, flow, seq). |
| 24 | **figma-canvas-design** | Design directly in the Figma canvas via the local Hermes Canvas Bridge plugin. Inspect frames, read color variables, ... |
| 25 | **findmy** | Track Apple devices/AirTags via FindMy.app on macOS. |
| 26 | **gif-search** | Search/download GIFs from Tenor via curl + jq. |
| 27 | **github-auth** | GitHub auth setup: HTTPS tokens, SSH keys, gh CLI login. |
| 28 | **github-code-review** | Review PRs: diffs, inline comments via gh or REST. |
| 29 | **github-issues** | Create, triage, label, assign GitHub issues via gh or REST. |
| 30 | **github-pr-workflow** | GitHub PR lifecycle: branch, commit, open, CI, merge. |
| 31 | **github-repo-management** | Clone/create/fork repos; manage remotes, releases. |
| 32 | **godmode** | Jailbreak LLMs: Parseltongue, GODMODE, ULTRAPLINIAN. |
| 33 | **google-workspace** | Gmail, Calendar, Drive, Docs, Sheets via gws CLI or Python. |
| 34 | **heartmula** | HeartMuLa: Suno-like song generation from lyrics + tags. |
| 35 | **hermes-agent** | Configure, extend, or contribute to Hermes Agent. |
| 36 | **hermes-agent-skill-authoring** | Author in-repo SKILL.md: frontmatter, validator, structure. |
| 37 | **himalaya** | Himalaya CLI: IMAP/SMTP email from terminal. |
| 38 | **huggingface-hub** | HuggingFace hf CLI: search/download/upload models, datasets. |
| 39 | **humanizer** | Humanize text: strip AI-isms and add real voice. |
| 40 | **ideation** | Generate project ideas via creative constraints. |
| 41 | **imessage** | Send and receive iMessages/SMS via the imsg CLI on macOS. |
| 42 | **jupyter-live-kernel** | Iterative Python via live Jupyter kernel (hamelnb). |
| 43 | **kanban-codex-lane** | Use when a Hermes Kanban worker wants to run Codex CLI as an isolated implementation lane while Hermes keeps ownershi... |
| 44 | **kanban-orchestrator** | Decomposition playbook + anti-temptation rules for an orchestrator profile routing work through Kanban. The "don't do... |
| 45 | **kanban-worker** | Pitfalls, examples, and edge cases for Hermes Kanban workers. The lifecycle itself is auto-injected into every worker... |
| 46 | **linear** | Linear: manage issues, projects, teams via GraphQL + curl. |
| 47 | **llama-cpp** | llama.cpp local GGUF inference + HF Hub model discovery. |
| 48 | **llm-wiki** | Karpathy's LLM Wiki: build/query interlinked markdown KB. |
| 49 | **macos-computer-use** | Drive the macOS desktop in the background — screenshots, mouse, keyboard, scroll, drag — without stealing the user's ... |
| 50 | **manim-video** | Manim CE animations: 3Blue1Brown math/algo videos. |
| 51 | **maps** | Geocode, POIs, routes, timezones via OpenStreetMap/OSRM. |
| 52 | **minecraft-modpack-server** | Host modded Minecraft servers (CurseForge, Modrinth). |
| 53 | **nano-pdf** | Edit PDF text/typos/titles via nano-pdf CLI (NL prompts). |
| 54 | **native-mcp** | MCP client: connect servers, register tools (stdio/HTTP). |
| 55 | **node-inspect-debugger** | Debug Node.js via --inspect + Chrome DevTools Protocol CLI. |
| 56 | **notion** | Notion API + ntn CLI: pages, databases, markdown, Workers. |
| 57 | **obliteratus** | OBLITERATUS: abliterate LLM refusals (diff-in-means). |
| 58 | **obsidian** | Read, search, create, and edit notes in the Obsidian vault. |
| 59 | **ocr-and-documents** | Extract text from PDFs/scans (pymupdf, marker-pdf). |
| 60 | **opencode** | Delegate coding to OpenCode CLI (features, PR review). |
| 61 | **openhue** | Control Philips Hue lights, scenes, rooms via OpenHue CLI. |
| 62 | **p5js** | p5.js sketches: gen art, shaders, interactive, 3D. |
| 63 | **pixel-art** | Pixel art w/ era palettes (NES, Game Boy, PICO-8). |
| 64 | **plan** | Plan mode: write markdown plan to .hermes/plans/, no exec. |
| 65 | **pokemon-player** | Play Pokemon via headless emulator + RAM reads. |
| 66 | **polymarket** | Query Polymarket: markets, prices, orderbooks, history. |
| 67 | **popular-web-designs** | 54 real design systems (Stripe, Linear, Vercel) as HTML/CSS. |
| 68 | **powerpoint** | Create, read, edit .pptx decks, slides, notes, templates. |
| 69 | **pretext** | Use when building creative browser demos with @chenglou/pretext — DOM-free text layout for ASCII art, typographic flo... |
| 70 | **python-debugpy** | Debug Python: pdb REPL + debugpy remote (DAP). |
| 71 | **requesting-code-review** | Pre-commit review: security scan, quality gates, auto-fix. |
| 72 | **research-paper-writing** | Write ML papers for NeurIPS/ICML/ICLR: design→submit. |
| 73 | **segment-anything-model** | SAM: zero-shot image segmentation via points, boxes, masks. |
| 74 | **serving-llms-vllm** | vLLM: high-throughput LLM serving, OpenAI API, quantization. |
| 75 | **sketch** | Throwaway HTML mockups: 2-3 design variants to compare. |
| 76 | **songsee** | Audio spectrograms/features (mel, chroma, MFCC) via CLI. |
| 77 | **songwriting-and-ai-music** | Songwriting craft and Suno AI music prompts. |
| 78 | **spike** | Throwaway experiments to validate an idea before build. |
| 79 | **spotify** | Spotify: play, search, queue, manage playlists and devices. |
| 80 | **subagent-driven-development** | Execute plans via delegate_task subagents (2-stage review). |
| 81 | **systematic-debugging** | 4-phase root cause debugging: understand bugs before fixing. |
| 82 | **teams-meeting-pipeline** | Operate the Teams meeting summary pipeline via Hermes CLI — summarize meetings, inspect pipeline status, replay jobs,... |
| 83 | **test-driven-development** | TDD: enforce RED-GREEN-REFACTOR, tests before code. |
| 84 | **touchdesigner-mcp** | Control a running TouchDesigner instance via twozero MCP — create operators, set parameters, wire connections, execut... |
| 85 | **webhook-subscriptions** | Webhook subscriptions: event-driven agent runs. |
| 86 | **weights-and-biases** | W&B: log ML experiments, sweeps, model registry, dashboards. |
| 87 | **writing-plans** | Write implementation plans: bite-sized tasks, paths, code. |
| 88 | **xurl** | X/Twitter via xurl CLI: post, search, DM, media, v2 API. |
| 89 | **youtube-content** | YouTube transcripts to summaries, threads, blogs. |
| 90 | **yuanbao** | Yuanbao (元宝) groups: @mention users, query info/members. |

## Hermes Profile: selulosa

> **Source:** `~/.hermes/profiles/selulosa/skills` — Skills specific to the `selulosa` Hermes profile

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **airtable** | Airtable REST API via curl. Records CRUD, filters, upserts. |
| 2 | **apple-notes** | Manage Apple Notes via memo CLI: create, search, edit. |
| 3 | **apple-reminders** | Apple Reminders via remindctl: add, list, complete. |
| 4 | **architecture-diagram** | Dark-themed SVG architecture/cloud/infra diagrams as HTML. |
| 5 | **arxiv** | Search arXiv papers by keyword, author, category, or ID. |
| 6 | **ascii-art** | ASCII art: pyfiglet, cowsay, boxes, image-to-ascii. |
| 7 | **ascii-video** | ASCII video: convert video/audio to colored ASCII MP4/GIF. |
| 8 | **audiocraft-audio-generation** | AudioCraft: MusicGen text-to-music, AudioGen text-to-sound. |
| 9 | **baoyu-article-illustrator** | Article illustrations: type × style × palette consistency. |
| 10 | **baoyu-comic** | Knowledge comics (知识漫画): educational, biography, tutorial. |
| 11 | **baoyu-infographic** | Infographics: 21 layouts x 21 styles (信息图, 可视化). |
| 12 | **blogwatcher** | Monitor blogs and RSS/Atom feeds via blogwatcher-cli tool. |
| 13 | **claude-code** | Delegate coding to Claude Code CLI (features, PRs). |
| 14 | **claude-design** | Design one-off HTML artifacts (landing, deck, prototype). |
| 15 | **codebase-inspection** | Inspect codebases w/ pygount: LOC, languages, ratios. |
| 16 | **codex** | Delegate coding to OpenAI Codex CLI (features, PRs). |
| 17 | **comfyui** | Generate images, video, and audio with ComfyUI — install, launch, manage nodes/models, run workflows with parameter i... |
| 18 | **debugging-hermes-tui-commands** | Debug Hermes TUI slash commands: Python, gateway, Ink UI. |
| 19 | **design-md** | Author/validate/export Google's DESIGN.md token spec files. |
| 20 | **desktop-audio-control** | Control and play local desktop audio: pause browser/media players, synthesize short voice clips, and play audio files... |
| 21 | **dogfood** | Exploratory QA of web apps: find bugs, evidence, reports. |
| 22 | **dspy** | DSPy: declarative LM programs, auto-optimize prompts, RAG. |
| 23 | **evaluating-llms-harness** | lm-eval-harness: benchmark LLMs (MMLU, GSM8K, etc.). |
| 24 | **excalidraw** | Hand-drawn Excalidraw JSON diagrams (arch, flow, seq). |
| 25 | **findmy** | Track Apple devices/AirTags via FindMy.app on macOS. |
| 26 | **gif-search** | Search/download GIFs from Tenor via curl + jq. |
| 27 | **github-auth** | GitHub auth setup: HTTPS tokens, SSH keys, gh CLI login. |
| 28 | **github-code-review** | Review PRs: diffs, inline comments via gh or REST. |
| 29 | **github-issues** | Create, triage, label, assign GitHub issues via gh or REST. |
| 30 | **github-pr-workflow** | GitHub PR lifecycle: branch, commit, open, CI, merge. |
| 31 | **github-repo-management** | Clone/create/fork repos; manage remotes, releases. |
| 32 | **godmode** | Jailbreak LLMs: Parseltongue, GODMODE, ULTRAPLINIAN. |
| 33 | **google-workspace** | Gmail, Calendar, Drive, Docs, Sheets via gws CLI or Python. |
| 34 | **heartmula** | HeartMuLa: Suno-like song generation from lyrics + tags. |
| 35 | **hermes-agent** | Configure, extend, or contribute to Hermes Agent. |
| 36 | **hermes-agent-skill-authoring** | Author in-repo SKILL.md: frontmatter, validator, structure. |
| 37 | **himalaya** | Himalaya CLI: IMAP/SMTP email from terminal. |
| 38 | **huggingface-hub** | HuggingFace hf CLI: search/download/upload models, datasets. |
| 39 | **humanizer** | Humanize text: strip AI-isms and add real voice. |
| 40 | **ideation** | Generate project ideas via creative constraints. |
| 41 | **imessage** | Send and receive iMessages/SMS via the imsg CLI on macOS. |
| 42 | **jupyter-live-kernel** | Iterative Python via live Jupyter kernel (hamelnb). |
| 43 | **kanban-codex-lane** | Use when a Hermes Kanban worker wants to run Codex CLI as an isolated implementation lane while Hermes keeps ownershi... |
| 44 | **kanban-orchestrator** | Decomposition playbook + anti-temptation rules for an orchestrator profile routing work through Kanban. The "don't do... |
| 45 | **kanban-worker** | Pitfalls, examples, and edge cases for Hermes Kanban workers. The lifecycle itself is auto-injected into every worker... |
| 46 | **linear** | Linear: manage issues, projects, teams via GraphQL + curl. |
| 47 | **llama-cpp** | llama.cpp local GGUF inference + HF Hub model discovery. |
| 48 | **llm-wiki** | Karpathy's LLM Wiki: build/query interlinked markdown KB. |
| 49 | **macos-computer-use** | Drive the macOS desktop in the background — screenshots, mouse, keyboard, scroll, drag — without stealing the user's ... |
| 50 | **manim-video** | Manim CE animations: 3Blue1Brown math/algo videos. |
| 51 | **maps** | Geocode, POIs, routes, timezones via OpenStreetMap/OSRM. |
| 52 | **minecraft-modpack-server** | Host modded Minecraft servers (CurseForge, Modrinth). |
| 53 | **nano-pdf** | Edit PDF text/typos/titles via nano-pdf CLI (NL prompts). |
| 54 | **native-mcp** | MCP client: connect servers, register tools (stdio/HTTP). |
| 55 | **node-inspect-debugger** | Debug Node.js via --inspect + Chrome DevTools Protocol CLI. |
| 56 | **notion** | Notion API + ntn CLI: pages, databases, markdown, Workers. |
| 57 | **obliteratus** | OBLITERATUS: abliterate LLM refusals (diff-in-means). |
| 58 | **obsidian** | Read, search, create, and edit notes in the Obsidian vault. |
| 59 | **ocr-and-documents** | Extract text from PDFs/scans (pymupdf, marker-pdf). |
| 60 | **opencode** | Delegate coding to OpenCode CLI (features, PR review). |
| 61 | **openhue** | Control Philips Hue lights, scenes, rooms via OpenHue CLI. |
| 62 | **p5js** | p5.js sketches: gen art, shaders, interactive, 3D. |
| 63 | **pixel-art** | Pixel art w/ era palettes (NES, Game Boy, PICO-8). |
| 64 | **plan** | Plan mode: write markdown plan to .hermes/plans/, no exec. |
| 65 | **pokemon-player** | Play Pokemon via headless emulator + RAM reads. |
| 66 | **polymarket** | Query Polymarket: markets, prices, orderbooks, history. |
| 67 | **popular-web-designs** | 54 real design systems (Stripe, Linear, Vercel) as HTML/CSS. |
| 68 | **powerpoint** | Create, read, edit .pptx decks, slides, notes, templates. |
| 69 | **pretext** | Use when building creative browser demos with @chenglou/pretext — DOM-free text layout for ASCII art, typographic flo... |
| 70 | **python-debugpy** | Debug Python: pdb REPL + debugpy remote (DAP). |
| 71 | **requesting-code-review** | Pre-commit review: security scan, quality gates, auto-fix. |
| 72 | **research-paper-writing** | Write ML papers for NeurIPS/ICML/ICLR: design→submit. |
| 73 | **segment-anything-model** | SAM: zero-shot image segmentation via points, boxes, masks. |
| 74 | **serving-llms-vllm** | vLLM: high-throughput LLM serving, OpenAI API, quantization. |
| 75 | **sketch** | Throwaway HTML mockups: 2-3 design variants to compare. |
| 76 | **songsee** | Audio spectrograms/features (mel, chroma, MFCC) via CLI. |
| 77 | **songwriting-and-ai-music** | Songwriting craft and Suno AI music prompts. |
| 78 | **spike** | Throwaway experiments to validate an idea before build. |
| 79 | **spotify** | Spotify: play, search, queue, manage playlists and devices. |
| 80 | **startup-engineer** | Use for Selulosa startup engineering work: MVP architecture, frontend/backend planning, implementation strategy, tech... |
| 81 | **startup-market-researcher** | Use for Selulosa startup market research: ICP, competitors, positioning, pricing, channels, customer discovery, and v... |
| 82 | **startup-orchestrator** | Use when coordinating Selulosa startup work that spans product, market, engineering, design, planning, or review. Kee... |
| 83 | **startup-product-manager** | Use for Selulosa startup product decisions: users, problem framing, MVP scope, roadmap, user stories, tradeoffs, and ... |
| 84 | **startup-reviewer** | Use before important Selulosa startup decisions, launches, demos, or code changes to find risks, missing tests, edge ... |
| 85 | **subagent-driven-development** | Execute plans via delegate_task subagents (2-stage review). |
| 86 | **systematic-debugging** | 4-phase root cause debugging: understand bugs before fixing. |
| 87 | **teams-meeting-pipeline** | Operate the Teams meeting summary pipeline via Hermes CLI — summarize meetings, inspect pipeline status, replay jobs,... |
| 88 | **test-driven-development** | TDD: enforce RED-GREEN-REFACTOR, tests before code. |
| 89 | **touchdesigner-mcp** | Control a running TouchDesigner instance via twozero MCP — create operators, set parameters, wire connections, execut... |
| 90 | **webhook-subscriptions** | Webhook subscriptions: event-driven agent runs. |
| 91 | **weights-and-biases** | W&B: log ML experiments, sweeps, model registry, dashboards. |
| 92 | **writing-plans** | Write implementation plans: bite-sized tasks, paths, code. |
| 93 | **xurl** | X/Twitter via xurl CLI: post, search, DM, media, v2 API. |
| 94 | **youtube-content** | YouTube transcripts to summaries, threads, blogs. |
| 95 | **yuanbao** | Yuanbao (元宝) groups: @mention users, query info/members. |

## Hermes Profile: work

> **Source:** `~/.hermes/profiles/work/skills` — Skills specific to the `work` Hermes profile

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **airtable** | Airtable REST API via curl. Records CRUD, filters, upserts. |
| 2 | **apple-notes** | Manage Apple Notes via memo CLI: create, search, edit. |
| 3 | **apple-reminders** | Apple Reminders via remindctl: add, list, complete. |
| 4 | **architecture-diagram** | Dark-themed SVG architecture/cloud/infra diagrams as HTML. |
| 5 | **arxiv** | Search arXiv papers by keyword, author, category, or ID. |
| 6 | **ascii-art** | ASCII art: pyfiglet, cowsay, boxes, image-to-ascii. |
| 7 | **ascii-video** | ASCII video: convert video/audio to colored ASCII MP4/GIF. |
| 8 | **audiocraft-audio-generation** | AudioCraft: MusicGen text-to-music, AudioGen text-to-sound. |
| 9 | **baoyu-article-illustrator** | Article illustrations: type × style × palette consistency. |
| 10 | **baoyu-comic** | Knowledge comics (知识漫画): educational, biography, tutorial. |
| 11 | **baoyu-infographic** | Infographics: 21 layouts x 21 styles (信息图, 可视化). |
| 12 | **blogwatcher** | Monitor blogs and RSS/Atom feeds via blogwatcher-cli tool. |
| 13 | **claude-code** | Delegate coding to Claude Code CLI (features, PRs). |
| 14 | **claude-design** | Design one-off HTML artifacts (landing, deck, prototype). |
| 15 | **cli-app-inspection** | Inspect installed CLI apps: binary location, help tree, aliases, config, API endpoints, usage flows. |
| 16 | **codebase-inspection** | Inspect codebases w/ pygount: LOC, languages, ratios. |
| 17 | **codex** | Delegate coding to OpenAI Codex CLI (features, PRs). |
| 18 | **comfyui** | Generate images, video, and audio with ComfyUI — install, launch, manage nodes/models, run workflows with parameter i... |
| 19 | **debugging-hermes-tui-commands** | Debug Hermes TUI slash commands: Python, gateway, Ink UI. |
| 20 | **design-md** | Author/validate/export Google's DESIGN.md token spec files. |
| 21 | **dogfood** | Exploratory QA of web apps: find bugs, evidence, reports. |
| 22 | **dspy** | DSPy: declarative LM programs, auto-optimize prompts, RAG. |
| 23 | **evaluating-llms-harness** | lm-eval-harness: benchmark LLMs (MMLU, GSM8K, etc.). |
| 24 | **excalidraw** | Hand-drawn Excalidraw JSON diagrams (arch, flow, seq). |
| 25 | **findmy** | Track Apple devices/AirTags via FindMy.app on macOS. |
| 26 | **gif-search** | Search/download GIFs from Tenor via curl + jq. |
| 27 | **github-auth** | GitHub auth setup: HTTPS tokens, SSH keys, gh CLI login. |
| 28 | **github-code-review** | Review PRs: diffs, inline comments via gh or REST. |
| 29 | **github-issues** | Create, triage, label, assign GitHub issues via gh or REST. |
| 30 | **github-pr-workflow** | GitHub PR lifecycle: branch, commit, open, CI, merge. |
| 31 | **github-repo-management** | Clone/create/fork repos; manage remotes, releases. |
| 32 | **godmode** | Jailbreak LLMs: Parseltongue, GODMODE, ULTRAPLINIAN. |
| 33 | **google-workspace** | Gmail, Calendar, Drive, Docs, Sheets via gws CLI or Python. |
| 34 | **heartmula** | HeartMuLa: Suno-like song generation from lyrics + tags. |
| 35 | **hermes-agent** | Configure, extend, or contribute to Hermes Agent. |
| 36 | **hermes-agent-skill-authoring** | Author in-repo SKILL.md: frontmatter, validator, structure. |
| 37 | **himalaya** | Himalaya CLI: IMAP/SMTP email from terminal. |
| 38 | **huggingface-hub** | HuggingFace hf CLI: search/download/upload models, datasets. |
| 39 | **humanizer** | Humanize text: strip AI-isms and add real voice. |
| 40 | **ideation** | Generate project ideas via creative constraints. |
| 41 | **imessage** | Send and receive iMessages/SMS via the imsg CLI on macOS. |
| 42 | **jupyter-live-kernel** | Iterative Python via live Jupyter kernel (hamelnb). |
| 43 | **kanban-codex-lane** | Use when a Hermes Kanban worker wants to run Codex CLI as an isolated implementation lane while Hermes keeps ownershi... |
| 44 | **kanban-orchestrator** | Decomposition playbook + anti-temptation rules for an orchestrator profile routing work through Kanban. The "don't do... |
| 45 | **kanban-worker** | Pitfalls, examples, and edge cases for Hermes Kanban workers. The lifecycle itself is auto-injected into every worker... |
| 46 | **linear** | Linear: manage issues, projects, teams via GraphQL + curl. |
| 47 | **llama-cpp** | llama.cpp local GGUF inference + HF Hub model discovery. |
| 48 | **llm-wiki** | Karpathy's LLM Wiki: build/query interlinked markdown KB. |
| 49 | **macos-computer-use** | Drive the macOS desktop in the background — screenshots, mouse, keyboard, scroll, drag — without stealing the user's ... |
| 50 | **manim-video** | Manim CE animations: 3Blue1Brown math/algo videos. |
| 51 | **maps** | Geocode, POIs, routes, timezones via OpenStreetMap/OSRM. |
| 52 | **minecraft-modpack-server** | Host modded Minecraft servers (CurseForge, Modrinth). |
| 53 | **nano-pdf** | Edit PDF text/typos/titles via nano-pdf CLI (NL prompts). |
| 54 | **native-mcp** | MCP client: connect servers, register tools (stdio/HTTP). |
| 55 | **node-inspect-debugger** | Debug Node.js via --inspect + Chrome DevTools Protocol CLI. |
| 56 | **notion** | Notion API + ntn CLI: pages, databases, markdown, Workers. |
| 57 | **obliteratus** | OBLITERATUS: abliterate LLM refusals (diff-in-means). |
| 58 | **obsidian** | Read, search, create, and edit notes in the Obsidian vault. |
| 59 | **ocr-and-documents** | Extract text from PDFs/scans (pymupdf, marker-pdf). |
| 60 | **opencode** | Delegate coding to OpenCode CLI (features, PR review). |
| 61 | **openhue** | Control Philips Hue lights, scenes, rooms via OpenHue CLI. |
| 62 | **p5js** | p5.js sketches: gen art, shaders, interactive, 3D. |
| 63 | **pixel-art** | Pixel art w/ era palettes (NES, Game Boy, PICO-8). |
| 64 | **plan** | Plan mode: write markdown plan to .hermes/plans/, no exec. |
| 65 | **pokemon-player** | Play Pokemon via headless emulator + RAM reads. |
| 66 | **polymarket** | Query Polymarket: markets, prices, orderbooks, history. |
| 67 | **popular-web-designs** | 54 real design systems (Stripe, Linear, Vercel) as HTML/CSS. |
| 68 | **powerpoint** | Create, read, edit .pptx decks, slides, notes, templates. |
| 69 | **pretext** | Use when building creative browser demos with @chenglou/pretext — DOM-free text layout for ASCII art, typographic flo... |
| 70 | **python-debugpy** | Debug Python: pdb REPL + debugpy remote (DAP). |
| 71 | **requesting-code-review** | Pre-commit review: security scan, quality gates, auto-fix. |
| 72 | **research-paper-writing** | Write ML papers for NeurIPS/ICML/ICLR: design→submit. |
| 73 | **segment-anything-model** | SAM: zero-shot image segmentation via points, boxes, masks. |
| 74 | **serving-llms-vllm** | vLLM: high-throughput LLM serving, OpenAI API, quantization. |
| 75 | **sketch** | Throwaway HTML mockups: 2-3 design variants to compare. |
| 76 | **songsee** | Audio spectrograms/features (mel, chroma, MFCC) via CLI. |
| 77 | **songwriting-and-ai-music** | Songwriting craft and Suno AI music prompts. |
| 78 | **spike** | Throwaway experiments to validate an idea before build. |
| 79 | **spotify** | Spotify: play, search, queue, manage playlists and devices. |
| 80 | **subagent-driven-development** | Execute plans via delegate_task subagents (2-stage review). |
| 81 | **systematic-debugging** | 4-phase root cause debugging: understand bugs before fixing. |
| 82 | **teams-meeting-pipeline** | Operate the Teams meeting summary pipeline via Hermes CLI — summarize meetings, inspect pipeline status, replay jobs,... |
| 83 | **test-driven-development** | TDD: enforce RED-GREEN-REFACTOR, tests before code. |
| 84 | **touchdesigner-mcp** | Control a running TouchDesigner instance via twozero MCP — create operators, set parameters, wire connections, execut... |
| 85 | **web-application-change-delivery** | Deliver changes in existing web applications by first tracing the current app shape, then integrating external APIs, ... |
| 86 | **webhook-subscriptions** | Webhook subscriptions: event-driven agent runs. |
| 87 | **weights-and-biases** | W&B: log ML experiments, sweeps, model registry, dashboards. |
| 88 | **worklog-task-activity-management** | Manage the user's company worklog workflow: derive daily activities from actual work/commits and keep task/todo recor... |
| 89 | **writing-plans** | Write implementation plans: bite-sized tasks, paths, code. |
| 90 | **xurl** | X/Twitter via xurl CLI: post, search, DM, media, v2 API. |
| 91 | **youtube-content** | YouTube transcripts to summaries, threads, blogs. |
| 92 | **yuanbao** | Yuanbao (元宝) groups: @mention users, query info/members. |

## Hermes Native Skills

> **Source:** `~/.hermes/skills (native)` — Non-symlinked skills in `~/.hermes/skills/`

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **airtable** | Airtable REST API via curl. Records CRUD, filters, upserts. |
| 2 | **apple-notes** | Manage Apple Notes via memo CLI: create, search, edit. |
| 3 | **apple-reminders** | Apple Reminders via remindctl: add, list, complete. |
| 4 | **architecture-diagram** | Dark-themed SVG architecture/cloud/infra diagrams as HTML. |
| 5 | **ascii-art** | ASCII art: pyfiglet, cowsay, boxes, image-to-ascii. |
| 6 | **ascii-video** | ASCII video: convert video/audio to colored ASCII MP4/GIF. |
| 7 | **audiocraft-audio-generation** | AudioCraft: MusicGen text-to-music, AudioGen text-to-sound. |
| 8 | **baoyu-article-illustrator** | Article illustrations: type × style × palette consistency. |
| 9 | **baoyu-comic** | Knowledge comics (知识漫画): educational, biography, tutorial. |
| 10 | **baoyu-infographic** | Infographics: 21 layouts x 21 styles (信息图, 可视化). |
| 11 | **claude-code** | Delegate coding to Claude Code CLI (features, PRs). |
| 12 | **claude-design** | Design one-off HTML artifacts (landing, deck, prototype). |
| 13 | **codebase-inspection** | Inspect codebases w/ pygount: LOC, languages, ratios. |
| 14 | **codex** | Delegate coding to OpenAI Codex CLI (features, PRs). |
| 15 | **comfyui** | Generate images, video, and audio with ComfyUI — install, launch, manage nodes/models, run workflows with parameter i... |
| 16 | **debugging-hermes-tui-commands** | Debug Hermes TUI slash commands: Python, gateway, Ink UI. |
| 17 | **design-md** | Author/validate/export Google's DESIGN.md token spec files. |
| 18 | **dogfood** | Exploratory QA of web apps: find bugs, evidence, reports. |
| 19 | **dspy** | DSPy: declarative LM programs, auto-optimize prompts, RAG. |
| 20 | **evaluating-llms-harness** | lm-eval-harness: benchmark LLMs (MMLU, GSM8K, etc.). |
| 21 | **excalidraw** | Hand-drawn Excalidraw JSON diagrams (arch, flow, seq). |
| 22 | **figma-canvas-design** | Design directly in the Figma canvas via the local Hermes Canvas Bridge plugin. Inspect frames, read color variables, ... |
| 23 | **figma-design-workflow** | Work with Figma files via Composio: connect accounts, inspect files, read palettes/assets, and leave actionable desig... |
| 24 | **findmy** | Track Apple devices/AirTags via FindMy.app on macOS. |
| 25 | **gif-search** | Search/download GIFs from Tenor via curl + jq. |
| 26 | **github-auth** | GitHub auth setup: HTTPS tokens, SSH keys, gh CLI login. |
| 27 | **github-code-review** | Review PRs: diffs, inline comments via gh or REST. |
| 28 | **github-issues** | Create, triage, label, assign GitHub issues via gh or REST. |
| 29 | **github-pr-workflow** | GitHub PR lifecycle: branch, commit, open, CI, merge. |
| 30 | **github-repo-management** | Clone/create/fork repos; manage remotes, releases. |
| 31 | **godmode** | Jailbreak LLMs: Parseltongue, GODMODE, ULTRAPLINIAN. |
| 32 | **google-workspace** | Gmail, Calendar, Drive, Docs, Sheets via gws CLI or Python. |
| 33 | **heartmula** | HeartMuLa: Suno-like song generation from lyrics + tags. |
| 34 | **hermes-agent** | Configure, extend, or contribute to Hermes Agent. |
| 35 | **hermes-agent-skill-authoring** | Author in-repo SKILL.md: frontmatter, validator, structure. |
| 36 | **himalaya** | Himalaya CLI: IMAP/SMTP email from terminal. |
| 37 | **huggingface-hub** | HuggingFace hf CLI: search/download/upload models, datasets. |
| 38 | **humanizer** | Humanize text: strip AI-isms and add real voice. |
| 39 | **ideation** | Generate project ideas via creative constraints. |
| 40 | **imessage** | Send and receive iMessages/SMS via the imsg CLI on macOS. |
| 41 | **jupyter-live-kernel** | Iterative Python via live Jupyter kernel (hamelnb). |
| 42 | **kanban-codex-lane** | Use when a Hermes Kanban worker wants to run Codex CLI as an isolated implementation lane while Hermes keeps ownershi... |
| 43 | **kanban-orchestrator** | Decomposition playbook + anti-temptation rules for an orchestrator profile routing work through Kanban. The "don't do... |
| 44 | **kanban-worker** | Pitfalls, examples, and edge cases for Hermes Kanban workers. The lifecycle itself is auto-injected into every worker... |
| 45 | **linear** | Linear: manage issues, projects, teams via GraphQL + curl. |
| 46 | **llama-cpp** | llama.cpp local GGUF inference + HF Hub model discovery. |
| 47 | **macos-computer-use** | Drive the macOS desktop in the background — screenshots, mouse, keyboard, scroll, drag — without stealing the user's ... |
| 48 | **manim-video** | Manim CE animations: 3Blue1Brown math/algo videos. |
| 49 | **maps** | Geocode, POIs, routes, timezones via OpenStreetMap/OSRM. |
| 50 | **minecraft-modpack-server** | Host modded Minecraft servers (CurseForge, Modrinth). |
| 51 | **nano-pdf** | Edit PDF text/typos/titles via nano-pdf CLI (NL prompts). |
| 52 | **native-mcp** | MCP client: connect servers, register tools (stdio/HTTP). |
| 53 | **node-inspect-debugger** | Debug Node.js via --inspect + Chrome DevTools Protocol CLI. |
| 54 | **notion** | Notion API + ntn CLI: pages, databases, markdown, Workers. |
| 55 | **obliteratus** | OBLITERATUS: abliterate LLM refusals (diff-in-means). |
| 56 | **obsidian** | Read, search, create, and edit notes in the Obsidian vault. |
| 57 | **ocr-and-documents** | Extract text from PDFs/scans (pymupdf, marker-pdf). |
| 58 | **opencode** | Delegate coding to OpenCode CLI (features, PR review). |
| 59 | **openhue** | Control Philips Hue lights, scenes, rooms via OpenHue CLI. |
| 60 | **p5js** | p5.js sketches: gen art, shaders, interactive, 3D. |
| 61 | **pixel-art** | Pixel art w/ era palettes (NES, Game Boy, PICO-8). |
| 62 | **plan** | Plan mode: write markdown plan to .hermes/plans/, no exec. |
| 63 | **pokemon-player** | Play Pokemon via headless emulator + RAM reads. |
| 64 | **popular-web-designs** | 54 real design systems (Stripe, Linear, Vercel) as HTML/CSS. |
| 65 | **powerpoint** | Create, read, edit .pptx decks, slides, notes, templates. |
| 66 | **pretext** | Use when building creative browser demos with @chenglou/pretext — DOM-free text layout for ASCII art, typographic flo... |
| 67 | **python-debugpy** | Debug Python: pdb REPL + debugpy remote (DAP). |
| 68 | **requesting-code-review** | Pre-commit review: security scan, quality gates, auto-fix. |
| 69 | **segment-anything-model** | SAM: zero-shot image segmentation via points, boxes, masks. |
| 70 | **serving-llms-vllm** | vLLM: high-throughput LLM serving, OpenAI API, quantization. |
| 71 | **sketch** | Throwaway HTML mockups: 2-3 design variants to compare. |
| 72 | **songsee** | Audio spectrograms/features (mel, chroma, MFCC) via CLI. |
| 73 | **songwriting-and-ai-music** | Songwriting craft and Suno AI music prompts. |
| 74 | **spike** | Throwaway experiments to validate an idea before build. |
| 75 | **spotify** | Spotify: play, search, queue, manage playlists and devices. |
| 76 | **subagent-driven-development** | Execute plans via delegate_task subagents (2-stage review). |
| 77 | **systematic-debugging** | 4-phase root cause debugging: understand bugs before fixing. |
| 78 | **teams-meeting-pipeline** | Operate the Teams meeting summary pipeline via Hermes CLI — summarize meetings, inspect pipeline status, replay jobs,... |
| 79 | **test-driven-development** | TDD: enforce RED-GREEN-REFACTOR, tests before code. |
| 80 | **touchdesigner-mcp** | Control a running TouchDesigner instance via twozero MCP — create operators, set parameters, wire connections, execut... |
| 81 | **webhook-subscriptions** | Webhook subscriptions: event-driven agent runs. |
| 82 | **weights-and-biases** | W&B: log ML experiments, sweeps, model registry, dashboards. |
| 83 | **writing-plans** | Write implementation plans: bite-sized tasks, paths, code. |
| 84 | **xurl** | X/Twitter via xurl CLI: post, search, DM, media, v2 API. |
| 85 | **youtube-content** | YouTube transcripts to summaries, threads, blogs. |
| 86 | **yuanbao** | Yuanbao (元宝) groups: @mention users, query info/members. |

## Development Projects

> **Source:** `~/dev` — Skills from local development projects

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **figma-canvas-design** | Design directly in the Figma canvas via the local Hermes Canvas Bridge plugin. Inspect frames, read color variables, ... |

## Dotfiles (Claude Skills)

> **Source:** `~/dotfiles/.claude/skills` — Skills tracked in the dotfiles repo

| # | Skill | Description |
|--:|-------|-------------|
| 1 | **frontend-design** | Create distinctive, production-grade frontend interfaces with high design quality. Use this skill when the user asks ... |

