Packages, Tools & Repo Navigation (Add-On)
What tools are installed (via Aftman)

Rojo (confirmed 7.6.0)

Wally

StyLua

Selene

Where to see them

In repo: aftman.toml (tool declarations).

On machine: shims live in %USERPROFILE%\.aftman\bin.

Verify anytime: rojo --version, wally --version, stylua --version, selene --version.

What packages are installed (via Wally)
Direct dependencies (declared in wally.toml)

sleitnick/knit@^1

evaera/promise@^4

sleitnick/component@^2

sleitnick/signal@^1

sleitnick/table-util@^1

sleitnick/trove@^1

roblox/roact@^1.4

roblox/rodux@^3

Resolved/transitive that appear after wally install

Examples you’ll see: sleitnick/comm, sleitnick/option, sleitnick/symbol, and the resolved versions of all the direct deps (e.g., knit 1.7.0, promise 4.0.0, roact 1.4.4, rodux 3.0.0, etc.).

Exact, locked versions are recorded in wally.lock.

Where to see installed packages

Source of truth (declared): wally.toml in the repo root.

Exact versions (locked): wally.lock in the repo root.

On disk (do NOT commit): Packages/ and Packages/_Index/ (these are local-only; you won’t see them on GitHub).

Confirm locally: run wally install and inspect Packages/_Index.

How to navigate the GitHub repo (what to open/edit)

Open these folders/files in the web UI:

Source code

src/server/** → server code

Server entrypoint: src/server/init.server.lua

Knit services: src/server/Services/*.lua

src/client/** → client code

Client entrypoint: src/client/init.client.lua

src/shared/** → shared modules

Project/config

default.project.json → Rojo mapping (tells Studio where src/** goes)

wally.toml / wally.lock → dependencies

stylua.toml / .styluaignore → formatting rules

selene.toml → lint rules

.editorconfig / .gitattributes → editor & line-ending rules

.gitignore → excludes Packages/ etc.

Note: You will not see Packages/ on GitHub; it’s intentionally ignored. Use wally.toml/wally.lock to understand dependencies on GitHub.

How to place/name files (recap for assistants)

Server: put files in src/server.

Use *.server.lua for Scripts (code that runs automatically on server).

Use plain *.lua for ModuleScripts.

Client: put files in src/client.

Use *.client.lua for LocalScripts (runs on client).

Use plain *.lua for ModuleScripts.

Shared: put modules in src/shared (require from both sides).

Knit services: src/server/Services/NameService.lua.

Naming: name modules after what they return (e.g., Inventory.lua returns Inventory; InventoryService.lua returns the Knit service).

How to use packages in code (import pattern only)

Require packages from ReplicatedStorage.Packages (e.g., require(ReplicatedStorage.Packages.Knit)).

Never edit code in Packages/ or _Index/.

Quick local checks (when changing dependencies or code)

wally install — ensure deps are present.

stylua --check src || stylua src — format if needed.

selene src — lint.

rojo serve — sync to Studio.

DONT TRY AND BUILD ANY GRADLE FILES
