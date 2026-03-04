class Hfd < Formula
  desc "Huggingface Model Downloader"
  homepage "https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f"
  url "https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f/raw/ee66e007ee84f479487c25a21715768884a426f5/hfd.sh"
  version "0.0.38_ee66e00"
  sha256 "6e50b925ba2682755763fdd80e2987f6d013899d79c5dcc8256c3f61225d812c"
  head "https://gist.github.com/697678ab8e528b85a2a7bddafea1fa4f.git"

  def install
    bin.install "hfd.sh" => "hfd"
    chmod 0755, bin/"hfd"
  end
end
