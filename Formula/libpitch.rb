class Libpitch < Formula
  desc "libpitch binary package"
  homepage "https://github.com/tty-pt/libpitch"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libpitch/releases/download/v1.0.1/libpitch-1.0.1-brew-arm64.tar.gz"
    sha256 "09c27921aafa30430c7585fc4c6acc882163950c9d842f0e93de03c104055711"
  else
    url "https://github.com/tty-pt/libpitch/releases/download/v1.0.1/libpitch-1.0.1-brew-x86_64.tar.gz"
    sha256 "64f6d883db382c404bb4416a699607df7b832141bce126d50ff79b9170eaac2f"
  end
  version "1.0.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
