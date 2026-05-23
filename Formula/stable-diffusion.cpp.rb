class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-646-0baf721/sd-master-646-0baf721-bin-macos-metal-arm64.zip"
  version "0.0.646_0baf721"
  sha256 "94a8c4fa5c1c9ed6ddb9c8163c2dd916e0d292bf9add813ad38cd7fbd3a77196"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
