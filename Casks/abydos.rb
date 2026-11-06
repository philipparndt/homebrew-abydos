# typed: strict
# frozen_string_literal: true

cask "abydos" do
  version "0.24.0"
  sha256 "47bc891e3d455fa46db271a1f6041c60ab323b1f69650df810b0c36750314089"

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
