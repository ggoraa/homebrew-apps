cask "moc" do
  version "0.2.0"
  sha256 "c7b8aba065d63885f3f71e0dcb200565ce135cf52fd9b75d4e6438edab4c57cb"
  revision 1

  url "https://github.com/ggoraa/moc/releases/download/#{version}/Moc.dmg"
  name "Moc"
  desc "A (really) native and powerful macOS Telegram client, optimized for moderating large communities and personal use."
  homepage "https://github.com/ggoraa/moc"

  app "Moc.app"

  zap trash: "~/Library/Containers/Moc"
end
