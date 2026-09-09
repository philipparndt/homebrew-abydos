# typed: strict
# frozen_string_literal: true

cask "abydos" do
  version "0.19.0"
  sha256 "36e2e1481880306af922b8fc96d277a727fbb3e57b05c9b0cda6dad71b125235"

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
