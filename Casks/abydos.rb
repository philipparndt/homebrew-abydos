# typed: strict
# frozen_string_literal: true

cask "abydos" do
  version "0.17.0"
  sha256 "aecb3677631c61bda2e7b33a6aa14a5787dd7e1c9af07394837eb236779f669a"

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
