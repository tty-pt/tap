class Libhyle-source < Formula
  desc "libhyle-source binary package"
  homepage "https://github.com/tty-pt/libhyle-source"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.0.0/libhyle-source-1.0.0-brew-arm64.tar.gz"
    sha256 "e1f6c1d945ca8e07e02b3919a30e951c85e8cb559d95709a3bd68b6cd0b60e88"
  else
    url "https://github.com/tty-pt/libhyle-source/releases/download/v1.0.0/libhyle-source-1.0.0-brew-x86_64.tar.gz"
    sha256 "a5a7d58e22f17f512c1d6166c3ce22e830c92077ec25cd866805182cae84f0a9"
  end
  version "1.0.0"
  depends_on "libqsys"
  depends_on "libqmap"
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
