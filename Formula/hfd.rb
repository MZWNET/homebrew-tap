class Hfd < Formula
  desc "Huggingface Model Downloader"
  homepage "https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f"
  url "https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f/raw/586ba3e6a5f828e5968e42a8daf23a2b8987aab3/hfd.sh"
  version "0.0.41_586ba3e"
  sha256 "051a227e92500e286cd8802674780840de9542a1d2e3232da9fd5094d0cadde8"
  head "https://gist.github.com/697678ab8e528b85a2a7bddafea1fa4f.git"

  def install
    bin.install "hfd.sh" => "hfd"
    chmod 0755, bin/"hfd"
  end
end
