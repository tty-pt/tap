class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.0.0/libsepal-1.0.0-brew-arm64.tar.gz"
    sha256 "a4c6cf31b74134592b7fde8d09214048b8b7a5c80e45dc057f0b9e4667f06b4f"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.0.0/libsepal-1.0.0-brew-x86_64.tar.gz"
    sha256 "7085a0ecdde13951115f0dbce43d2436bc64b839631ee0120c971e819e6e288d"
  end
  version "1.0.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
