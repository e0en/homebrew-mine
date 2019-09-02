# code taken from https://github.com/bertjwregeer/homebrew-mine
require 'formula'

class Cppzmq < Formula
  homepage 'https://github.com/zeromq/cppzmq'
  url 'https://github.com/zeromq/cppzmq.git'
  version '4.4.1-brew'

  depends_on 'cmake' => :build
  depends_on 'zeromq'

  def install
      system "echo '#{prefix}'"
      system "cmake ."
      include.install "zmq.hpp"
      include.install "zmq_addon.hpp"
      (lib/'cmake'/'cppzmq').install "cppzmqConfig.cmake"
      (lib/'cmake'/'cppzmq').install "cppzmqConfigVersion.cmake"
      (lib/'cmake'/'cppzmq').install "CMakeFiles/Export/share/cmake/cppzmq/cppzmqTargets.cmake"
      (lib/'cmake'/'cppzmq').install "libzmq-pkg-config"
  end
end
