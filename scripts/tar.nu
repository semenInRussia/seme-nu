# create a archive
export extern "tar -c" [
  -z                            # Compress archive with gzip
  -j                            # Compress archive with bzip2
  -J                            # Compress archive with xz
  --lzma                        # Compress archive with lzma
  --format: string@"nu-complete tar formats"  # Select archive format
  --exclude: string            # Skip files that match pattern
  -C: string                   # Change to dir before processing remaining files
  -f: string                   # Name of the created archive
  -b                           # Use # 512-byte records per I/O block
  -f: string                   # Location of archive (default \\.\tape0)
  -v                           # Verbose
  -w                           # Interactive
  ...files: string             # Files to create archive
]

def "nu-complete tar formats" [] {
  [ustar pax cpio shar]
}

# list of the files in archive
export extern "tar -t" [
  patterns?: string            # If specified, list only entries that match
  -f: string                   # name of the archive file
  -b                           # Use # 512-byte records per I/O block
  -f: string                   # Location of archive (default \\.\tape0)
  -v                           # Verbose
  -w                           # Interactive
]

# extract files from the archive
export extern "tar -x" [
  -k                   # Keep (don't overwrite) existing files
  -m                   # Don't restore modification times
  -O                   # Write entries to stdout, don't restore to disk
  -p                   # Restore permissions (including ACLs, owner, file flags)
  -f: string           # name of the archive file
  -b                   # Use # 512-byte records per I/O block
  -f: string           # Location of archive (default \\.\tape0)
  -v                   # Verbose
  -w                   # Interactive
  patterns?: string    # If specified, extract only entries that match
]

