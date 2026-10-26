class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.6.0/libhyle-1.6.0-brew-arm64.tar.gz"
    sha256 "87d5068d76009b803f93d213e513e902d222386f5cd2690c264b3e60b205a290"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.6.0/libhyle-1.6.0-brew-x86_64.tar.gz"
    sha256 "6f807c45fd147a469845cc0250416cbb95922d866460b5684c1b10edc616f469"
  end
  version "1.6.0"
  depends_on "libcorm"
  depends_on "liblemma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
