class Libsepal < Formula
  desc "libsepal binary package"
  homepage "https://github.com/tty-pt/libsepal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libsepal/releases/download/v1.0.0/libsepal-1.0.0-brew-arm64.tar.gz"
    sha256 "ec7cdc090a2ccd92f140fcdd92b92edba7bd34e7f34996db8beae05e8c0e5da9"
  else
    url "https://github.com/tty-pt/libsepal/releases/download/v1.0.0/libsepal-1.0.0-brew-x86_64.tar.gz"
    sha256 "db61f5c7cc98e99826c26256b75701a639d215fefd89410c525ebf7cc7e894d1"
  end
  version "1.0.0"
  depends_on "libqmap"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
