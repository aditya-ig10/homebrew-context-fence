cask "context-fence" do
  version "1.1.9"
  sha256 "36db7ff142416ade0ce0c6f8d332d6dac37da81fdcd44c600ad4cec07a54b674"

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
