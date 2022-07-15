cask "moc" do
  version "0.2.0-p2"
  sha256 "1549ccd097ca037941db99695e0f1b1dd78d254153df2b6f794c064f194cb4f3"

  url "https://github.com/mock-foundation/moc/releases/download/#{version}/Moc.dmg"
  name "Moc"
  desc "A (really) native and powerful macOS and iPadOS Telegram client, optimized for moderating large communities and personal use."
  homepage "https://github.com/mock-foundation/moc"

  app "Moc.app"

  zap trash: "~/Library/Containers/Moc"
end
