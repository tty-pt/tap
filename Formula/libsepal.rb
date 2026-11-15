class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.5.2/libsepal-1.5.2-brew-arm64.tar.gz"
    sha256 "eb0f14bde2f644ec99e111cfec835f14513237a228119bb20494afb042de45c6"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.5.2/libsepal-1.5.2-brew-x86_64.tar.gz"
    sha256 "23e408b4004b2b1a25c9a2b43761223e372233e70b1208c7e6cc60a8670ef71b"
  end
  version "1.5.2"
  depends_on "libcorm"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
