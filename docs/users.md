# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [users.proto](#users-proto)
    - [CheckPasswordRequest](#users-CheckPasswordRequest)
    - [EmptyRequest](#users-EmptyRequest)
    - [EmptyResponse](#users-EmptyResponse)
    - [GetUserByEmailRequest](#users-GetUserByEmailRequest)
    - [GetUserResponse](#users-GetUserResponse)
    - [RegisterRequest](#users-RegisterRequest)
    - [RegisterResponse](#users-RegisterResponse)
    - [SuccessResponse](#users-SuccessResponse)
  
    - [UserRole](#users-UserRole)
  
    - [Users](#users-Users)
  
- [Scalar Value Types](#scalar-value-types)



<a name="users-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## users.proto



<a name="users-CheckPasswordRequest"></a>

### CheckPasswordRequest
Request message for password verification


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | User email |
| password | [string](#string) |  | Password to verify |






<a name="users-EmptyRequest"></a>

### EmptyRequest
Empty request (used when no parameters are needed)






<a name="users-EmptyResponse"></a>

### EmptyResponse
Empty response (used when no data is returned)






<a name="users-GetUserByEmailRequest"></a>

### GetUserByEmailRequest
Request for retrieving user by email


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | User email |






<a name="users-GetUserResponse"></a>

### GetUserResponse
Response message with user information


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [int64](#int64) |  | Unique user ID |
| email | [string](#string) |  | User email |
| role | [UserRole](#users-UserRole) |  | User role |






<a name="users-RegisterRequest"></a>

### RegisterRequest
Request message for registering a new user


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | User email |
| password | [string](#string) |  | User password (should be stored as a hash) |
| role | [UserRole](#users-UserRole) |  | User role |






<a name="users-RegisterResponse"></a>

### RegisterResponse
Response message after successful registration


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [int64](#int64) |  | Unique user ID |






<a name="users-SuccessResponse"></a>

### SuccessResponse
Response message indicating whether an operation was successful


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  | Success flag |





 


<a name="users-UserRole"></a>

### UserRole
User role definitions

| Name | Number | Description |
| ---- | ------ | ----------- |
| USER_ROLE_UNSPECIFIED | 0 | Unspecified role |
| USER_ROLE_USER | 1 | Regular user |
| USER_ROLE_MANAGER | 2 | Manager (extended privileges) |
| USER_ROLE_ADMIN | 3 | Admin (full access) |


 

 


<a name="users-Users"></a>

### Users
Users service for managing user accounts

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Register | [RegisterRequest](#users-RegisterRequest) | [RegisterResponse](#users-RegisterResponse) | Registers a new user |
| GetUserByEmail | [GetUserByEmailRequest](#users-GetUserByEmailRequest) | [GetUserResponse](#users-GetUserResponse) | Retrieves user information by email |
| GetUserMy | [EmptyRequest](#users-EmptyRequest) | [GetUserResponse](#users-GetUserResponse) | Retrieves information about the currently authenticated user |
| CheckPassword | [CheckPasswordRequest](#users-CheckPasswordRequest) | [SuccessResponse](#users-SuccessResponse) | Verifies whether the provided password is correct for the given email |
| UpdateLastSeen | [EmptyRequest](#users-EmptyRequest) | [EmptyResponse](#users-EmptyResponse) | Update &#34;last seen&#34; timestamp of the currently aunthenticated user |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

