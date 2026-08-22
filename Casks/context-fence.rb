cask "context-fence" do
  version "1.1.9-b"
  sha256 "3172c3d31edea10dba6f945e923d6ea72eb2e5ecf07712dca93233c7cd2d5e5e"

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
