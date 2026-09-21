class Libxylem < Formula
  desc "libxylem binary package"
  homepage "https://github.com/tty-pt/libxylem"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.0/libxylem-1.4.0-brew-arm64.tar.gz"
    sha256 "862393011fe584cd5f76ce67fc98f1dffdc84426016f8f1e78ae773aca2292d5"
  else
    url "https://github.com/tty-pt/libxylem/releases/download/v1.4.0/libxylem-1.4.0-brew-x86_64.tar.gz"
    sha256 "77146eea1dc458b21483e1b9f7042802e1344f284268dfb356337769cd2490d2"
  end
  version "1.4.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
