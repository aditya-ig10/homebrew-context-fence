cask "context-fence" do
  version "1.1.7"
  sha256 "97a9e1d07618c234b821a9a3b187e962c748554721a0e280dc2be47e3541757e"

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
