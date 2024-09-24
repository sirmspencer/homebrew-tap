class Doit < Formula
  desc "a purposely simple aliasing tool"
  homepage ""
  url "https://github.com/sirmspencer/doit/archive/refs/tags/v0.1.29.tar.gz"
  sha256 ""
  license "GPL-3.0"

  depends_on "borkdude/brew/babashka"

  def install
    bin.install "bb/doit"
    bash_completion.install "doit-completions.bash"
  end
end
