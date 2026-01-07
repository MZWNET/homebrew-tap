class Hfd < Formula
  version "ee66e00"
  desc "🤗Huggingface Model Downloader"
  homepage "https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f"
  head "https://gist.github.com/697678ab8e528b85a2a7bddafea1fa4f.git"

  url "https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f/raw/ee66e007ee84f479487c25a21715768884a426f5/hfd.sh"
  sha256 "6e50b925ba2682755763fdd80e2987f6d013899d79c5dcc8256c3f61225d812c"

  def install
    bin.install "hfd.sh" => "hfd"
    system "chmod", "a+x", "#{bin}/hfd"
  end
end
