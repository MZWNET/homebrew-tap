class StableDiffusionCpp < Formula
  version "master-463-e7e83ed"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "https://github.com/leejet/stable-diffusion.cpp/releases/download/master-463-e7e83ed/sd-master-e7e83ed-bin-Darwin-macOS-15.7.2-arm64.zip"
  sha256 "eec5a9702989189445041a87e93e884d2f267d7f0dc555a1aca19db8e2fac5ca"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
    system "/usr/bin/install_name_tool", "-add_rpath", "@loader_path", "#{bin}/sd-cli"
    system "/usr/bin/install_name_tool", "-add_rpath", "@loader_path", "#{bin}/sd-server"
  end
end
