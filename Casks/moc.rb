cask "moc" do
  version "0.1.0"
  sha256 "8272ee4dd2595cd984842912a12f6ca9274e416a3194b6c1ca1f60a8d95f208d"

  url "https://github.com/ggoraa/moc/releases/download/#{version}/Moc.dmg"
  name "Moc"
  desc "A (really) native and powerful macOS Telegram client, optimized for moderating large communities and personal use."
  homepage "https://github.com/ggoraa/moc"

  app "Moc.app"

  zap trash: "~/Library/Containers/Moc"
end
