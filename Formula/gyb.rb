# typed: false
# frozen_string_literal: true

# Stolen fro- ahem, generously borrowed from NSHipster's formulae

# :nodoc:
class Gyb < Formula
  desc "\"Generate Your Boilerplate\""
  homepage "https://nshipster.com/swift-gyb/"
  url "https://raw.githubusercontent.com/apple/swift/17e5594bec7cebe980857e4fe3e05837708f9f62/utils/gyb"
  version "2022-03-16"
  sha256 "0a97b3ac257fa29d6240d1878590facd1d80053491cc14601f7e68bb182a29b1"

  depends_on xcode: ["10.0", :build]

  resource "gyb.py" do
    url "https://raw.githubusercontent.com/apple/swift/9fd97d5b52daed62746ec39ce0d7bc54d8ae658a/utils/gyb.py"
    sha256 "5994b956195fe896ae4bb584bcb4484e4941f18e244da6a6185e8b15c823fdd6"
    version "2022-03-16"
  end

  def install
    resource("gyb.py").stage { bin.install "gyb.py" }
    system "sed", "-ie", "1s/python2.7/python3/", "gyb"
    bin.install "gyb"
    chmod 0755, bin/"gyb"
  end

  test do
    system bin/"gyb", "--help"
  end
end
