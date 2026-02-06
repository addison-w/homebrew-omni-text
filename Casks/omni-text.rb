cask "omni-text" do
  version "0.1.1"
  sha256 "8f5df27122e0c7cef315a1043794be133a755eecc22e748282a637ffb5162a69"

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
