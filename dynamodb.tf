resource "aws_dynamodb_table" "gamenetsdb" {
  name           = "gamenetsdb-table"
  billing_mode   = "PAY_PER_REQUEST"  # Use "PROVISIONED" if you want to specify read/write capacity units
  hash_key       = "id"               # Partition key
  range_key      = "sort_key"         # Sort key (optional)

  attribute {
    name = "id"
    type = "S"  # S for String, N for Number, B for Binary
  }

  attribute {
    name = "sort_key"
    type = "N"
  }

  attribute {
    name = "gsi_id"
    type = "S"
  }

  attribute {
    name = "lsi_sort_key"
    type = "S"
  }

  # Optional: Define Global Secondary Index
  global_secondary_index {
    name            = "gsi-gamenetsdb"
    hash_key        = "gsi_id"
    projection_type = "ALL"  # ALL, KEYS_ONLY, INCLUDE
  }

  # Optional: Define Local Secondary Index
  local_secondary_index {
    name            = "lsi-gamenetsdb"
    range_key       = "lsi_sort_key"
    projection_type = "ALL"
  }

  tags = {
    Environment = "Dev"
    Name        = "GamenetsDBTable"
  }
}