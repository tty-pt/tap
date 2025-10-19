class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.1.0/libqsys-0.1.0-brew-arm64.tar.gz"
    sha256 "c2786c14d180baf0c76372df812758219b7364342ab2b83551c7ae4bd7c964c3"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.1.0/libqsys-0.1.0-brew-x86_64.tar.gz"
    sha256 "ef778bc94d8f7246cd929ff4d249b9a57cfba0fead0ab69bb1b5f2eb48504e76"
  end
  version "0.1.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
