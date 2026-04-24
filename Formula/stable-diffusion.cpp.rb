class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-587-b8bdffc/sd-master-587-b8bdffc-bin-macos-metal-arm64.zip"
  version "0.0.587_b8bdffc"
  sha256 "2a497ae448361b626c0c9638dcd98171717c7d8e2eb23970cb78386586ebbd67"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
