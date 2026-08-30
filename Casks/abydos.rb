cask "abydos" do
  version "0.10.0"
  sha256 "adf12655f99c6d1ad2fc1231d1d30555f2f5f7b1136bf556de66c59fa604a7f1"

  url "https://github.com/philipparndt/abydos/releases/download/v#{version}/Abydos-#{version}.dmg"
  name "Abydos"
  desc "Terminal-first IDE for AI and cloud development"
  homepage "https://github.com/philipparndt/abydos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Abydos.app"

  zap trash: [
    "~/Library/Application Support/de.rnd7.ideai",
    "~/Library/Preferences/de.rnd7.ideai.plist",
    "~/Library/Saved Application State/de.rnd7.ideai.savedState",
  ]
end
