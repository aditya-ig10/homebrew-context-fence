cask "context-fence" do
  version "2.0.0"
  sha256 "0ba62a8bdd7068334191c7eace8345e18d014d6e4b49a39d8c732ec93dbcca34"

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
