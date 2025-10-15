class Libxxhash < Formula
  desc "libxxhash binary package"
  homepage "https://github.com/tty-pt/libxxhash"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxxhash/releases/download/v0.8.3/libxxhash-0.8.3-brew-arm64.tar.gz"
    sha256 "16a565b2baffbc1f37ddb2cac9654c81ca0ea9c140547342fe13e0dd6eb44f2a"
  else
    url "https://github.com/tty-pt/libxxhash/releases/download/v0.8.3/libxxhash-0.8.3-brew-x86_64.tar.gz"
    sha256 "3efa78e23a49feeb893e61e3966d4e7799e5785ba4993310da467d7e7996b677"
  end
  version "0.8.3"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
