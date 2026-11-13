class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.7.1/libjoint-1.7.1-brew-arm64.tar.gz"
    sha256 "f59c55a077e4e2696cd6db972237a09892c248485cc2ffe6651793d38798cdb4"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.7.1/libjoint-1.7.1-brew-x86_64.tar.gz"
    sha256 "1ed8e93351388de2693ff41f33b72961c985be80334fad3a55677b91c95f7aae"
  end
  version "1.7.1"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
