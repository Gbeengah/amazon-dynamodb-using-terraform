# amazon-dynamodb-using-terraform
using IaC(terraform) to automate the deployment of an amazon dynamodb table with global secondary indexes(GSI) and local secondary indexes(LSI)


![image](https://github.com/user-attachments/assets/aa67895d-dda5-449b-a3d1-3766462d9905)

## Explanation of the Code


### Table Attributes: Define the attributes for the table. The hash_key and range_key are the primary keys, with their respective data types (S for string, N for number).

### Billing Mode: PAY_PER_REQUEST is used for on-demand pricing. Use PROVISIONED if you want to set specific read/write capacity units.

### Global Secondary Index (GSI): Allows querying on non-primary key attributes. It requires its own partition key and optional sort key.

### Local Secondary Index (LSI): Uses the same partition key as the primary key but allows for a different sort key.

### Tags: Metadata tags that help organize and manage AWS resources.

#### Additional Considerations
Capacity Units: If using PROVISIONED billing mode, you need to specify read_capacity and write_capacity within the table and index configurations.

##### IAM Permissions: Ensure that your AWS credentials have the necessary permissions to create and manage DynamoDB resources.

##### Data Retention: DynamoDB automatically handles scaling and backups. Consider enabling point-in-time recovery for additional data protection.
