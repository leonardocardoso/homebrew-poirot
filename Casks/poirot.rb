cask "poirot" do
  version "1.1.0"
  sha256 "8f2fb349e204eca8b8501effa96839d2a00f200d1907023036e20d075820826c"

  url "https://github.com/LeonardoCardoso/poirot/releases/download/v#{version}/Poirot-v#{version}.dmg"
  name "Poirot"
  desc "Native macOS companion for Claude Code"
  homepage "https://github.com/LeonardoCardoso/poirot"

  depends_on macos: ">= :sequoia"

  app "Poirot.app"

  zap trash: [
    "~/Library/Preferences/com.leonardocardoso.Poirot.plist",
    "~/Library/Caches/com.leonardocardoso.Poirot",
  ]
end
