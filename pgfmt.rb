class Pgfmt < Formula
  desc "Formatter for PostgreSQL sql files"
  homepage "https://github.com/sirmspencer/pgfmt"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.4/pgfmt-darwin-arm64.tar.gz"
      sha256 "3bd969bb19f2da8095e00b9cce9d336693828ff558be111e1b681f7e4cf0eabb"
    end
    on_intel do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.4/pgfmt-darwin-amd64.tar.gz"
      sha256 "e37bb428fce15ce1ad1b81af4776814e79c4beefb79887239232e00f18f73b84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.4/pgfmt-linux-arm64.tar.gz"
      sha256 "ae6af21c66d57c3fa174de6ebea214056d01cea823c5a56f7860b1ceb1787be6"
    end
    on_intel do
      url "https://github.com/sirmspencer/pgfmt/releases/download/v0.1.4/pgfmt-linux-amd64.tar.gz"
      sha256 "95ca8a145f874dcc60ed823104829deb4b1fa46195167709b9d1676ca68a8149"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "pgfmt v#{version}", shell_output("#{bin}/pgfmt -version")
    assert_equal "select 1\n", pipe_output("#{bin}/pgfmt", "SELECT 1")
  end
end
