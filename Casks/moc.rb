cask "moc" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/downloads/ggoraa/moc/moc.zip"
  name "Moc"
  desc "A (really) native and powerful macOS Telegram client, optimized for moderating large communities and personal use."
  homepage "https://github.com/ggoraa/moc"

  app "Moc.app"

  zap trash: "~Library/Containers/Moc"
end
