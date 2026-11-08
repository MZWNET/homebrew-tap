class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-1056-9234ad8/sd-master-1056-9234ad8-bin-macos-metal-arm64.zip"
  version "0.0.1056_9234ad8"
  sha256 "e5688eac2180ce04309f98f1ca699e2ba00bfbbfbc56b01d98af733c84bbb4ec"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
