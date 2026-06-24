class Hfd < Formula
  desc "Huggingface Model Downloader"
  homepage "https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f"
  url "https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f/raw/dcc19a065877cb1c75d22b7c5662845e8c8df203/hfd.sh"
  version "0.0.42_dcc19a0"
  sha256 "524894ef4f8e82da6180156a96bd9678d56d77e877b7f69a9d253da97d28866f"
  head "https://gist.github.com/697678ab8e528b85a2a7bddafea1fa4f.git"

  def install
    bin.install "hfd.sh" => "hfd"
    chmod 0755, bin/"hfd"
  end
end
