cask "moc" do
  version "0.2.0"
  sha256 "b57485c390f60cd766b59fbb31587ab56980bdf71e94a2f76dcc7b43fc024cba"
  depends_on macos: ">= :monterey"
  auto_updates true

  url "https://github.com/mock-foundation/moc/releases/download/#{version}/Moc.dmg"
  name "Moc"
  desc "A (really) native and powerful macOS and iPadOS Telegram client, optimized for moderating large communities and personal use."
  homepage "https://github.com/mock-foundation/moc"

  app "Moc.app"

  zap trash: "~/Library/Containers/dev.ggoraa.moc"
end
