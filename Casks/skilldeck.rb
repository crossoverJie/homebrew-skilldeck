cask "skilldeck" do
  version "0.0.16"
  sha256 "b995bae066e0920964ea58a8606a6141dafc5158b491c2e3d1d5ee1b4dc0d7f4"

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
