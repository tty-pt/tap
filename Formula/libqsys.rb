class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.1/libqsys-1.2.1-brew-arm64.tar.gz"
    sha256 "1a0f1a58227da58f8947a1d68b969aca936e0152f7840ce2fa666c10d634f1ff"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.1/libqsys-1.2.1-brew-x86_64.tar.gz"
    sha256 "2c63897e22efba47b899e5d3899971f78cee2523eab8b40fc42c9053dac9f18b"
  end
  version "1.2.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
