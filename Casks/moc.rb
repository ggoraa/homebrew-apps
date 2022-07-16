cask "moc" do
  version "0.2.0-p2"
  sha256 "1f95c04d9b00f5adf7b9abc202136f1da5b3e33ce3a9665f5c84881ef05f0d48"

  url "https://github.com/mock-foundation/moc/releases/download/#{version}/Moc.dmg"
  name "Moc"
  desc "A (really) native and powerful macOS and iPadOS Telegram client, optimized for moderating large communities and personal use."
  homepage "https://github.com/mock-foundation/moc"

  app "Moc.app"

  zap trash: "~/Library/Containers/Moc"
end
