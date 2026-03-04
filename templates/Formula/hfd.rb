class Hfd < Formula
  desc "Huggingface Model Downloader"
  homepage "https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f"
  url "#{{url}}"
  version "#{{ver}}"
  sha256 "#{{sha256}}"
  head "https://gist.github.com/697678ab8e528b85a2a7bddafea1fa4f.git"

  def install
    bin.install "hfd.sh" => "hfd"
    chmod 0755, bin/"hfd"
  end
end
