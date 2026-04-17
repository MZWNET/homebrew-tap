class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-572-1b4e9be/sd-master-572-1b4e9be-bin-macos-metal-arm64.zip"
  version "0.0.572_1b4e9be"
  sha256 "19b5da1ce21ec834fffce4908fb22d62e5d47afa7d78953dedfdfd08ecbe0320"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
