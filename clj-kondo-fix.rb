class CljKondoFix < Formula
  desc "Auto-fix Clojure code based on clj-kondo findings"
  homepage "https://github.com/sirmspencer/clj-kondo-fix"
  version "0.2.0"
  license "EPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.2.0/clj-kondo-fix-darwin-arm64.tar.gz"
      sha256 "7f7e39b736242971550ccede3334776c93914b07861aeccc46baefbe85ed4b63"
    end
    on_intel do
      url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.2.0/clj-kondo-fix-darwin-amd64.tar.gz"
      sha256 "6f2e44dee435213207089ffc88fd9aa2841b4e8f66388c1237638040b6b5edc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.2.0/clj-kondo-fix-linux-arm64.tar.gz"
      sha256 "e637e3e0687ff6f0a83d41e84e7608a7b2de4b8ec6e6bb71ce5327ace472c8a2"
    end
    on_intel do
      url "https://github.com/sirmspencer/clj-kondo-fix/releases/download/v0.2.0/clj-kondo-fix-linux-amd64.tar.gz"
      sha256 "39e506242a3b08dbd7aa6810ff0ef49989520010fff011659df483e0ab3d0d6a"
    end
  end

  def install
    bin.install "clj-kondo-fix"
  end

  test do
    assert_match "clj-kondo-fix #{version}", shell_output("#{bin}/clj-kondo-fix --version")
    (testpath/"example.clj").write "(ns example (:require [clojure.string :as s]))\n"
    # exits 1 when it fixes something
    shell_output("#{bin}/clj-kondo-fix --lint #{testpath}/example.clj --fix", 1)
    refute_match "clojure.string", (testpath/"example.clj").read
  end
end
