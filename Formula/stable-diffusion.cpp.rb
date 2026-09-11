class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-853-b68d586/sd-master-853-b68d586-bin-macos-metal-arm64.zip"
  version "0.0.853_b68d586"
  sha256 "4364c5861d4eb3c3fb3adaf3219b8ee9aa8d504453245430cc3b5d88cc9b40a8"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
