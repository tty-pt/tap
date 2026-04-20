class Libndx < Formula
  desc "libndx binary package"
  homepage "https://github.com/tty-pt/libndx"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libndx/releases/download/v1.2.0/libndx-1.2.0-brew-arm64.tar.gz"
    sha256 "470e991ff952405a50a9ac39cce94dabacd400aff83a4b91ed0f7e8fe917a8a3"
  else
    url "https://github.com/tty-pt/libndx/releases/download/v1.2.0/libndx-1.2.0-brew-x86_64.tar.gz"
    sha256 "c268680404a73ab9e83945e28182fd233d5ed6f27913e00f6ef8cd34396509da"
  end
  version "1.2.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
