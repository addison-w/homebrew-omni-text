cask "omni-text" do
  version "0.1.0"
  sha256 "8aa849ea82b4a6c62ffbcfc6bde859037a3affacd3b1decb1cb06c30624cafc3"

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
