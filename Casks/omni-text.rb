cask "omni-text" do
  version "0.1.0"
  sha256 "f430f361689de6589a114eea7d4da7d8ce9b5c21f8699834b2242e02810b0ebb"

  url "https://github.com/addison-w/Omni-Text/releases/download/v#{version}/Omni.Text_#{version}_aarch64.dmg"
  name "Omni Text"
  desc "AI-powered text rewriting from any app via global hotkeys"
  homepage "https://github.com/addison-w/Omni-Text"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Omni Text.app"

  zap trash: [
    "~/Library/Application Support/com.omni-text.app",
    "~/Library/Caches/com.omni-text.app",
  ]
end
