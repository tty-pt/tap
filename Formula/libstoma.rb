class Libstoma < Formula
  desc "libstoma binary package"
  homepage "https://github.com/tty-pt/libstoma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstoma/releases/download/v1.0.0/libstoma-1.0.0-brew-arm64.tar.gz"
    sha256 "274f2b147bbb1c9cacf25022792a4b63697bdd0b46fc5280bc783c8433e63d9d"
  else
    url "https://github.com/tty-pt/libstoma/releases/download/v1.0.0/libstoma-1.0.0-brew-x86_64.tar.gz"
    sha256 "63e744a7bbbdb9e8e42a1b925e73eb55d1e92786a9db70e9c981b9f3c5be6e46"
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
