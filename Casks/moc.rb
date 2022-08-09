cask "moc" do
  version "0.2.0-p3"
  sha256 "5ae69161be7117912857487634b52b3f98e45a73a615356665fc11a41ea8732b"
  depends_on macos: ">= :monterey"
  auto_updates true

  url "https://github.com/mock-foundation/moc/releases/download/#{version}/Moc.dmg"
  name "Moc"
  desc "A (really) native and powerful macOS and iPadOS Telegram client, optimized for moderating large communities and personal use."
  homepage "https://github.com/mock-foundation/moc"

  app "Moc.app"

  zap trash: "~/Library/Containers/dev.ggoraa.moc"
end
