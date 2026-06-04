class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-672-1f9ee88/sd-master-672-1f9ee88-bin-macos-metal-arm64.zip"
  version "0.0.672_1f9ee88"
  sha256 "016cd9146da96eb213342ee47afdce4f5a91f5d4589907ca26adc5b5c93f3638"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
