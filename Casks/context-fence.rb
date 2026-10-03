cask "context-fence" do
  version "2.0.0"
  sha256 "a134ae419dbe99799ab9d87cbda9a1474684694322b829ed0a4a9e67b89ac138"

  url "https://github.com/aditya-ig10/context-fence-releases/releases/download/v#{version}/Context-Fence-#{version}-universal.dmg"
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
