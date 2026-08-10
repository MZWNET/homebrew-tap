class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-813-bfbef5b/sd-master-813-bfbef5b-bin-macos-metal-arm64.zip"
  version "0.0.813_bfbef5b"
  sha256 "5166bf64e36f981450aa280980bf087a0e070358a6addfd6e190e6243ffc7aa5"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
