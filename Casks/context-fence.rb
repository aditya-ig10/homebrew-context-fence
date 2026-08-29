cask "context-fence" do
  version "2.0.0"
  sha256 "e823802eb8ea7e370101ad378bc41e6b3d56e3a52b032232f0e9c42f378291f5"

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
