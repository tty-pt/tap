class LibhyleSource < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.0.0/libhyle-source-1.0.0-brew-arm64.tar.gz"
    sha256 "f7d32db418a2379fa06ba04d42a400aedf32ec10693fd54c1e14719d3f687fa2"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.0.0/libhyle-source-1.0.0-brew-x86_64.tar.gz"
    sha256 "59d89bbb02c3fefa395b91d352940e2af858f3c309cf979fa16b74922a2ea647"
  end
  version "1.0.0"
  depends_on "libqsys"
  depends_on "libcorm"
  depends_on "libstoma"
  depends_on "libhyle"
  depends_on "json-c"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
