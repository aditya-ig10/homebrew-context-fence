cask "context-fence" do
  version "1.1.5"
  sha256 "81761d59807452085bf4b6a4cdb94a3e78bf1bf0fca3eb70a78d5f3891da0541"

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
