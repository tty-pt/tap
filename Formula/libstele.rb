class Libstele < Formula
  desc "libstele binary package"
  homepage "https://github.com/tty-pt/libstele"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstele/releases/download/v1.7.1/libstele-1.7.1-brew-arm64.tar.gz"
    sha256 "073e786a1328c47f364406c0e7c0ea4993cb8cd690532a3c110231c41f18514f"
  else
    url "https://github.com/tty-pt/libstele/releases/download/v1.7.1/libstele-1.7.1-brew-x86_64.tar.gz"
    sha256 "681d6a1a76c81f67c54936833472cd49faff2cd2996e6ee3dc77b4ad09098ef7"
  end
  version "1.7.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
