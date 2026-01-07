class StableDiffusionCpp < Formula
  version "#{{ver}}"
  desc "🤗Huggingface Model Downloader"
  homepage "https://gist.github.com/padeoe/697678ab8e528b85a2a7bddafea1fa4f"
  head "https://gist.github.com/697678ab8e528b85a2a7bddafea1fa4f.git"

  url "#{{url}}"
  sha256 "#{{sha256}}"

  def install
    bin.install "hfd.sh" => "hfd"
    system "chmod", "a+x", "#{bin}/hfd"
  end
end
