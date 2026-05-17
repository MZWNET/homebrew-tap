class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-612-d7ecbe1/sd-master-612-d7ecbe1-bin-macos-metal-arm64.zip"
  version "0.0.612_d7ecbe1"
  sha256 "7006898d06e3c010b25bbd955c667cf7ec45c3015f0851b2eeefe831bf13c972"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
