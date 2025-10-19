class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.0/libndx-0.1.0-brew-arm64.tar.gz"
    sha256 "9042fb77d419f5d7164daa35a3225a8909b2af590ba172dedfa938b6c5386679"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v0.1.0/libndx-0.1.0-brew-x86_64.tar.gz"
    sha256 "f1f468c6b568a19bacf2a7017852c0b1bb796cb2284cda8bb5756ef58546477b"
  end
  version "0.1.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
