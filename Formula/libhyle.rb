class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.6.1/libhyle-1.6.1-brew-arm64.tar.gz"
    sha256 "f350eb152f958ddf890e937b7ff3d073558260ac154c7331c1b0dd284cb454cc"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.6.1/libhyle-1.6.1-brew-x86_64.tar.gz"
    sha256 "61dd0a1cfc9604c0461ba6ab67139b8a99ac1e388b16aa3c1199bc7c0afc147e"
  end
  version "1.6.1"
  depends_on "libcorm"
  depends_on "liblemma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
