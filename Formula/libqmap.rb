class Libqmap < Formula
  desc "libqmap binary package"
  homepage "https://github.com/tty-pt/libqmap"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.1/libqmap-1.0.1-brew-arm64.tar.gz"
    sha256 "5a12fd48fa54f190dab006ad8b6e91d25465fe33ab667e59fed0497ae866b19c"
  else
    url "https://github.com/tty-pt/libqmap/releases/download/v1.0.1/libqmap-1.0.1-brew-x86_64.tar.gz"
    sha256 "1f3c5570fd2230507002fd52593d37e19bb36482491501af9a24a1b814bd62ab"
  end
  version "1.0.1"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
