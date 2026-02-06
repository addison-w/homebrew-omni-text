cask "omni-text" do
  version "0.1.2"
  sha256 "a3b5bfc0e5a361e114f95e32965ff4f0ad567637ac5573e53a844ff11bf99448"

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
