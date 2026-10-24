# typed: strict
# frozen_string_literal: true

cask "abydos" do
  version "0.23.8"
  sha256 "dedd294f67ed3cb106948b308639dd05b86f093317d2a762f67fdf30dd02c8d7"

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
