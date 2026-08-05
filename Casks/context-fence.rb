cask "context-fence" do
  version "1.1.3"
  sha256 "5c6657855d9f8a2f5b945f2d86c64278e6603c751e02e99f413d531f28a22255"

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
