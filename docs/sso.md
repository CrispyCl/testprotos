# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [sso.proto](#sso-proto)
    - [LoginRequest](#auth-LoginRequest)
    - [RefreshTokenRequest](#auth-RefreshTokenRequest)
    - [TokenPairResponse](#auth-TokenPairResponse)
    - [ValidateTokenRequest](#auth-ValidateTokenRequest)
    - [ValidateTokenResponse](#auth-ValidateTokenResponse)
  
    - [TokenStatus](#auth-TokenStatus)
    - [UserRole](#auth-UserRole)
  
    - [Auth](#auth-Auth)
  
- [Scalar Value Types](#scalar-value-types)



<a name="sso-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## sso.proto



<a name="auth-LoginRequest"></a>

### LoginRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  |  |
| password | [string](#string) |  |  |
| app_id | [int32](#int32) |  |  |






<a name="auth-RefreshTokenRequest"></a>

### RefreshTokenRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| refresh_token | [string](#string) |  |  |






<a name="auth-TokenPairResponse"></a>

### TokenPairResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| access_token | [string](#string) |  |  |
| refresh_token | [string](#string) |  |  |






<a name="auth-ValidateTokenRequest"></a>

### ValidateTokenRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [string](#string) |  |  |






<a name="auth-ValidateTokenResponse"></a>

### ValidateTokenResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [TokenStatus](#auth-TokenStatus) |  |  |
| user_id | [int64](#int64) |  |  |
| role | [UserRole](#auth-UserRole) |  |  |





 


<a name="auth-TokenStatus"></a>

### TokenStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| TOKEN_STATUS_INVALID | 0 |  |
| TOKEN_STATUS_VALID | 1 |  |
| TOKEN_STATUS_EXPIRED | 2 |  |
| TOKEN_STATUS_REVOKED | 3 |  |



<a name="auth-UserRole"></a>

### UserRole


| Name | Number | Description |
| ---- | ------ | ----------- |
| USER_ROLE_UNSPECIFIED | 0 |  |
| USER_ROLE_USER | 1 |  |
| USER_ROLE_MANAGER | 2 |  |
| USER_ROLE_ADMIN | 3 |  |


 

 


<a name="auth-Auth"></a>

### Auth


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Login | [LoginRequest](#auth-LoginRequest) | [TokenPairResponse](#auth-TokenPairResponse) |  |
| Refresh | [RefreshTokenRequest](#auth-RefreshTokenRequest) | [TokenPairResponse](#auth-TokenPairResponse) |  |
| ValidateToken | [ValidateTokenRequest](#auth-ValidateTokenRequest) | [ValidateTokenResponse](#auth-ValidateTokenResponse) |  |

 



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

