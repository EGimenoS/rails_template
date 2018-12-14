def source_paths
  Array(super) + 
    [File.expand_path(File.dirname(__FILE__))]
end