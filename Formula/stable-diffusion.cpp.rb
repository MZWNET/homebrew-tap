class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-964-1d0a58a/sd-master-964-1d0a58a-bin-macos-metal-arm64.zip"
  version "0.0.964_1d0a58a"
  sha256 "336b4a8340e2bf834229b50007b420d5fb865f696b7e8fd22c078dc495e2ff26"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
