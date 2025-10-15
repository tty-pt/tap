class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-brew-arm64.tar.gz"
    sha256 "549b902c4a3226b4379714b46b90d4cf631e7e77c02296d40d6801f66c0c8bf7"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-brew-x86_64.tar.gz"
    sha256 "59fb41bc1d4057d8679151475fab98aecd8b4ea85f0b55642ee5c8527b34706b"
  end
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
