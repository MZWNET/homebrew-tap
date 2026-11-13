class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-1091-b9d7176/sd-master-1091-b9d7176-bin-macos-metal-arm64.zip"
  version "0.0.1091_b9d7176"
  sha256 "7bea2dac57d58523815bca05feb8b073efae65c8e99c63df7eef9702d2207e02"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
