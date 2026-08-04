cask "context-fence" do
  version "1.1.1"
  sha256 "9268cd8a13a39b79653fea6763c841cb40d5338f406c15a754ce953a27018b77"

  url "https://github.com/aditya-ig10/homebrew-context-fence/releases/download/v#{version}/Context-Fence-#{version}-universal.dmg"
  name "Context Fence"
  desc "Local-first MCP security proxy for AI coding agents"
  homepage "https://github.com/aditya-ig10/context-fence"

  app "Context Fence.app"

  postflight do
    system_command "/usr/bin/xattr",
                    args: ["-cr", "#{appdir}/Context Fence.app"]
  end

  zap trash: [
    "~/Library/Application Support/Context Fence",
    "~/Library/Preferences/com.contextfence.app.plist",
  ]
end
