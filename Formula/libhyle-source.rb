class LibhyleSource < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.4.1/libhyle-source-1.4.1-brew-arm64.tar.gz"
    sha256 "ca58d8deed9501c5771da674bab45bb9dccacec10285e175ef026540c232e1c5"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.4.1/libhyle-source-1.4.1-brew-x86_64.tar.gz"
    sha256 "7cd5aa014e2527ad6c30e47406680ee706cf7532256aa25edf46743ac1102876"
  end
  version "1.4.1"
  depends_on "libstele"
  depends_on "libcorm"
  depends_on "liblemma"
  depends_on "libhyle"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
