package io.ksmt.solver.z3

import io.ksmt.utils.library.NativeLibraryLoaderArm
import io.ksmt.utils.library.NativeLibraryLoaderLinux
import io.ksmt.utils.library.NativeLibraryLoaderUtils

/**
 * ksmt-z3 0.5.23 does not publish a linux-arm64 native artifact (only linux-x64, windows-x64,
 * mac-x64, mac-arm). NativeLibraryLoaderUtils.load resolves the loader class reflectively by
 * name (KZ3NativeLibraryLoader + OS + Arch), so providing this class + matching resources under
 * lib/linux/arm/z3/ is enough to make it discoverable, mirroring the upstream per-platform loaders.
 */
class KZ3NativeLibraryLoaderLinuxArm : KZ3NativeLibraryLoader, NativeLibraryLoaderLinux, NativeLibraryLoaderArm {
    override fun load() {
        NativeLibraryLoaderUtils.loadLibrariesFromResources(this, libraries)
    }

    companion object {
        private val libraries = listOf("libz3", "libz3java")
    }
}
