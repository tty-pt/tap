class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.0.0/liblemma-1.0.0-brew-arm64.tar.gz"
    sha256 "555c98d38d14a3e2e96efc76e587015650f1048c2066dca76ced8f2a666bf499"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.0.0/liblemma-1.0.0-brew-x86_64.tar.gz"
    sha256 "c0b3eab8d8fb2868b5b9ef5b3ccde53e4d5a8378e7504bfc75e3c917a4ec3227"
  end
  version "1.0.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
