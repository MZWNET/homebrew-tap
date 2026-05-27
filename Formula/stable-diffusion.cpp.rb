class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-652-92dc726/sd-master-652-92dc726-bin-macos-metal-arm64.zip"
  version "0.0.652_92dc726"
  sha256 "fe6ac9ac6bf256cde3470d6e8db05072b6808d4a8f41dcaec40e4aa8f48581f5"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
