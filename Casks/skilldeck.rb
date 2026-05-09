cask "skilldeck" do
  version "0.0.24"
  sha256 "eb44b054f4edbb0c6db7567d4ca0dca9cb8ff71a53460af70af977643c9e269d"

  url "https://github.com/crossoverJie/SkillDeck/releases/download/v#{version}/SkillDeck-v#{version}-universal.zip"
  name "SkillDeck"
  desc "Native macOS application for managing AI code agent skills"
  homepage "https://github.com/crossoverJie/SkillDeck"

  depends_on macos: ">= :sonoma"

  app "SkillDeck.app"

  zap trash: [
    "~/.agents/.skill-lock.json",
  ]
end
