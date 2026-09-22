def chunked_read(lines: list, chunk_size: int):
  def _batches():
    pos = 0
    while pos < len(lines):
      yield lines[pos:pos + chunk_size]
      pos = pos + chunk_size
  return list(_batches())
