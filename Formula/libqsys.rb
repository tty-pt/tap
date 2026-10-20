class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.2/libqsys-1.2.2-brew-arm64.tar.gz"
    sha256 "8dea4666e5e8844d0505792dbb1b814d05263f21fd042dc0d4d6f76dcff9767d"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v1.2.2/libqsys-1.2.2-brew-x86_64.tar.gz"
    sha256 "6944ffef8e0bf44722773273a5d87063a8b1a7ca3e788afcfc8a19e7cd0ab596"
  end
  version "1.2.2"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
