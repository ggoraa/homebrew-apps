class Kumitateru < Formula
  desc "Build system for Garmin ConnectIQ. Simple, fast, powerful!"
  homepage "https://github.com/ggoraa/kumitateru"
  url "https://github.com/ggoraa/kumitateru/archive/refs/tags/0.4.0.zip"
  sha256 "a286ad0d3f729464294fa23c85cc40df04d6c8f4c28ca6015dea387f1f84362d"
  license "GPL-3.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test kumitateru`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
