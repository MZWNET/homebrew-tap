class StableDiffusionCpp < Formula
  version "#{{ver}}"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++ "
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "#{{url}}"
  sha256 "#{{sha256}}"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end

  test do
    system "#{bin}/sd-cli", "--help"
    system "#{bin}/sd-server", "--help"
  end
end
