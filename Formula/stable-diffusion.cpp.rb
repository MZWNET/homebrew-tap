class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-650-1ceb5bd/sd-master-650-1ceb5bd-bin-macos-metal-arm64.zip"
  version "0.0.650_1ceb5bd"
  sha256 "77da052cac85ba1df5a551aef0d8cba3125e36fe25b3b84572de68f7eb2d2a39"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
