class AxilTty < Formula
  desc "axil-tty binary package"
  homepage "https://github.com/tty-pt/axil-tty"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.4.0/axil-tty-1.4.0-brew-arm64.tar.gz"
    sha256 "f10cfd4b083707f712f5006b180ce039609dc73fa6b7b290fd07d5a9964c87d4"
  else
    url "https://github.com/tty-pt/axil-tty/releases/download/v1.4.0/axil-tty-1.4.0-brew-x86_64.tar.gz"
    sha256 "d8398c065961575546f755afd6deed4f0d6b0fac3a4e5091d6dc63f222544049"
  end
  version "1.4.0"
  depends_on "axil"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
