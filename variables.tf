variable "lakeformation_opt_ins" {
  description = <<EOT
Map of lakeformation_opt_ins, attributes below
Optional:
    - region
    - condition (block):
    - principal (block):
        - data_lake_principal_identifier (required)
    - resource_data (block):
        - catalog (optional, block):
            - id (optional)
        - data_cells_filter (optional, block):
            - database_name (optional)
            - name (optional)
            - table_catalog_id (optional)
            - table_name (optional)
        - data_location (optional, block):
            - catalog_id (optional)
            - resource_arn (required)
        - database (optional, block):
            - catalog_id (optional)
            - name (required)
        - lf_tag (optional, block):
            - catalog_id (optional)
            - key (required)
            - values (required)
        - lf_tag_expression (optional, block):
            - catalog_id (optional)
            - name (required)
        - lf_tag_policy (optional, block):
            - catalog_id (optional)
            - expression (optional)
            - expression_name (optional)
            - resource_type (required)
        - table (optional, block):
            - catalog_id (optional)
            - database_name (required)
            - name (optional)
            - wildcard (optional)
        - table_with_columns (optional, block):
            - catalog_id (optional)
            - column_names (optional)
            - column_wildcard (optional, block):
                - excluded_column_names (optional)
            - database_name (required)
            - name (required)
EOT

  type = map(object({
    region = optional(string)
    condition = optional(list(object({
    })))
    principal = optional(list(object({
      data_lake_principal_identifier = string
    })))
    resource_data = optional(list(object({
      catalog = optional(list(object({
        id = optional(string)
      })))
      data_cells_filter = optional(list(object({
        database_name    = optional(string)
        name             = optional(string)
        table_catalog_id = optional(string)
        table_name       = optional(string)
      })))
      data_location = optional(list(object({
        catalog_id   = optional(string)
        resource_arn = string
      })))
      database = optional(list(object({
        catalog_id = optional(string)
        name       = string
      })))
      lf_tag = optional(list(object({
        catalog_id = optional(string)
        key        = string
        values     = set(string)
      })))
      lf_tag_expression = optional(list(object({
        catalog_id = optional(string)
        name       = string
      })))
      lf_tag_policy = optional(list(object({
        catalog_id      = optional(string)
        expression      = optional(list(string))
        expression_name = optional(string)
        resource_type   = string
      })))
      table = optional(list(object({
        catalog_id    = optional(string)
        database_name = string
        name          = optional(string)
        wildcard      = optional(bool)
      })))
      table_with_columns = optional(list(object({
        catalog_id   = optional(string)
        column_names = optional(set(string))
        column_wildcard = optional(list(object({
          excluded_column_names = optional(set(string))
        })))
        database_name = string
        name          = string
      })))
    })))
  }))
}

