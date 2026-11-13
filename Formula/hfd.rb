class Hfd < Formula
  desc "Huggingface Model Downloader"
  homepage "https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f"
  url "https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f/raw/1e24d5312a93a5b9faff00b77bb199030169414d/hfd.sh"
  version "0.0.43_1e24d53"
  sha256 "b10c628e09ea967186f3904f81726181079322ca9ba01806b0f374a6db526db7"
  head "https://gist.github.com/697678ab8e528b85a2a7bddafea1fa4f.git"

  def install
    bin.install "hfd.sh" => "hfd"
    chmod 0755, bin/"hfd"
  end
end
