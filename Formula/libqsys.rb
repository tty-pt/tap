class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-macos-arm64.tar.gz"
    sha256 "1d62aee47f08cfc0917c88db92aad19180b8f9391cb1d5cff3f5f5fa79ee1e35"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.11/libqsys-0.0.11-macos-x86_64.tar.gz"
    sha256 "5d21bea8def71b02ce862907274aa77c9aa94d422e97f50c744cb07d55aba54f"
  end
  version "0.0.11"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
