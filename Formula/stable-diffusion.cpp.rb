class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-730-7b5f34d/sd-master-730-7b5f34d-bin-macos-metal-arm64.zip"
  version "0.0.730_7b5f34d"
  sha256 "b7ec39a41c456a569933f05ff14450ffd8a4c4bd0aef924f75dd0613fb3b1fd8"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
