# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/2.3.12.RELEASE/maven-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/2.3.12.RELEASE/maven-plugin/reference/html/#build-image)
* [Spring Data JPA](https://docs.spring.io/spring-boot/docs/2.5.1/reference/htmlsingle/#boot-features-jpa-and-spring-data)
* [Spring Web](https://docs.spring.io/spring-boot/docs/2.5.1/reference/htmlsingle/#boot-features-developing-web-applications)

### Guides
The following guides illustrate how to use some features concretely:

* [Accessing Data with JPA](https://spring.io/guides/gs/accessing-data-jpa/)
* [Accessing data with MySQL](https://spring.io/guides/gs/accessing-data-mysql/)
* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/bookmarks/)

### Passwords are used in example are "password"
#### youtube link
https://www.youtube.com/watch?v=wxebTn_a930

## Get token
User postman
http://localhost:9001/oauth/token
-H Authorization Basic base64converted(USER_CLIENT_APP:password)
#### Form data 
grant_type: password
username: admin
password: password

#### Sample Response
{
    "access_token": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsiVVNFUl9DTElFTlRfUkVTT1VSQ0UiLCJVU0VSX0FETUlOX1JFU09VUkNFIl0sInVzZXJfbmFtZSI6ImFkbWluIiwic2NvcGUiOlsicm9sZV9hZG1pbiJdLCJleHAiOjE2MjQ1NjE0MTUsImF1dGhvcml0aWVzIjpbInJvbGVfYWRtaW4iLCJjYW5fdXBkYXRlX3VzZXIiLCJjYW5fcmVhZF91c2VyIiwiY2FuX2NyZWF0ZV91c2VyIiwiY2FuX2RlbGV0ZV91c2VyIl0sImp0aSI6IjJiNjJhZDAwLWNmN2EtNDViOC1hZjRiLWRiNjhhOTZiNTNiNyIsImVtYWlsIjoid2lsbGlhbUBnbWFpbC5jb20iLCJjbGllbnRfaWQiOiJVU0VSX0NMSUVOVF9BUFAifQ.LvgeTdz3AHfxQ1gDi1ogJNAPA0DqZfGswsZSNEcLfSz4E6vacsDjLgV6o9msHHYUmSy5TCs9Yd_JrlmNt6FcXEnKw-qtw9Xgh4ow3jeVfSVlkY-Wrtt1geGJ_T37N8UlYMzHM17eEMMCBCYefU4dxnGLx8u_W9kKGhSJtNX2nFv2SPbDETM9eOG-JOuis8XJxKIH5WlHCwLD5-Kix4inHomo6V8Usy2ikSv-wo2n0PrcrgdmakDeLismT19DFh2WOUH0Y4YC301qa9upAcLfPdUAXt7XGxLeSWyV3jirAH2D7bx8Biuofnyh5QEuPRkrHlWr8ctXwm3FHkhlta5vQA",
    "token_type": "bearer",
    "refresh_token": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsiVVNFUl9DTElFTlRfUkVTT1VSQ0UiLCJVU0VSX0FETUlOX1JFU09VUkNFIl0sInVzZXJfbmFtZSI6ImFkbWluIiwic2NvcGUiOlsicm9sZV9hZG1pbiJdLCJhdGkiOiIyYjYyYWQwMC1jZjdhLTQ1YjgtYWY0Yi1kYjY4YTk2YjUzYjciLCJleHAiOjE2MjQ1NjQxMTUsImF1dGhvcml0aWVzIjpbInJvbGVfYWRtaW4iLCJjYW5fdXBkYXRlX3VzZXIiLCJjYW5fcmVhZF91c2VyIiwiY2FuX2NyZWF0ZV91c2VyIiwiY2FuX2RlbGV0ZV91c2VyIl0sImp0aSI6Ijc3NDdhNTJiLTE0NmQtNGNjNi05ZTRhLTQ0NTg0MzVmMjQ2OSIsImVtYWlsIjoid2lsbGlhbUBnbWFpbC5jb20iLCJjbGllbnRfaWQiOiJVU0VSX0NMSUVOVF9BUFAifQ.TViYdNOBZutuuxKOHi1c7tVAp-ZTwFNNKYgxqno23v5tyl80JL0aCS0ecQ878fRZhQ6ZegfFK0v93hxGooKyPXTzyp6ckxCSUmKzqIl1PMJKE0xlmF_LgmY7PcT1rm6UdQgIYOK8RRryCf7KjOyUbLX4v1q_BF4K6rVtCWXis74IJmWd2s1PDZf_VCFVGzAAe6J6DYMi096lb5l1OBn34xUd_ErFGfm2ms9OOnkViS2n_LnCRnhXVKQEQpqj69ynFBwsvK5BpF_tLQSnUBTrUBHgoiC74bXgg7Zj8XshiUbG17JmDiJTcaVsCzKXXP3P7klyq05wpXeaKEEUElhiag",
    "expires_in": 899,
    "scope": "role_admin",
    "email": "william@gmail.com",
    "jti": "2b62ad00-cf7a-45b8-af4b-db68a96b53b7"
}

## Get refresh token
http://localhost:9001/oauth/token
-H Authorization Basic base64converted(USER_CLIENT_APP:password)
-H Authorization Basic VVNFUl9DTElFTlRfQVBQOnBhc3N3b3Jk
#### Form data
grant_type: refresh_token
refresh_token: <Take refresh_token from above sample output>


#### Sample response
{
    "access_token": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsiVVNFUl9DTElFTlRfUkVTT1VSQ0UiLCJVU0VSX0FETUlOX1JFU09VUkNFIl0sInVzZXJfbmFtZSI6ImFkbWluIiwic2NvcGUiOlsicm9sZV9hZG1pbiJdLCJleHAiOjE2MjQ1NjEwMTYsImF1dGhvcml0aWVzIjpbInJvbGVfYWRtaW4iLCJjYW5fdXBkYXRlX3VzZXIiLCJjYW5fcmVhZF91c2VyIiwiY2FuX2NyZWF0ZV91c2VyIiwiY2FuX2RlbGV0ZV91c2VyIl0sImp0aSI6ImE2NzYwODBhLThhNjQtNDM4ZC04ODJmLWE0NWRhMmZkMTU1ZiIsImVtYWlsIjoid2lsbGlhbUBnbWFpbC5jb20iLCJjbGllbnRfaWQiOiJVU0VSX0NMSUVOVF9BUFAifQ.R2nDrtawjYGeHukaBVukFkKfm_FSJ3FLPU04nHg_8ZdNQsF1Z5nWwJ8H1Ag96a8aQT9lgNV3dkv6a0kYAMDHvjN86k3eMmykMs-S-ro1dRubBFci5RtPV5O8voDxiJ-2VNicVEU5TGcu4AD8Xu5Ttt8W5omH_OYzqzbyxfOtC-_sdRqpOH8U8AtcpMAKO-cQTu4gAiv6miYGpzRoI_pI-n-wcMrBMyxn1zBYjRI_V_HxftJ2EMoMDCYmAqDfLiqHoRRzvwoK8YStbOTFQ_DfI6W7nrsjFHKBW1ba4w7w1hlN0J0BH1TBLImes3ou10sL-AfMGr9kfwbg17yTPe_mbg",
    "token_type": "bearer",
    "refresh_token": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsiVVNFUl9DTElFTlRfUkVTT1VSQ0UiLCJVU0VSX0FETUlOX1JFU09VUkNFIl0sInVzZXJfbmFtZSI6ImFkbWluIiwic2NvcGUiOlsicm9sZV9hZG1pbiJdLCJhdGkiOiJhNjc2MDgwYS04YTY0LTQzOGQtODgyZi1hNDVkYTJmZDE1NWYiLCJleHAiOjE2MjQ1NjM2ODcsImF1dGhvcml0aWVzIjpbInJvbGVfYWRtaW4iLCJjYW5fdXBkYXRlX3VzZXIiLCJjYW5fcmVhZF91c2VyIiwiY2FuX2NyZWF0ZV91c2VyIiwiY2FuX2RlbGV0ZV91c2VyIl0sImp0aSI6IjkzMGQ3NjgzLTk4NTAtNGFjYi05ZDM3LTdkNzQxNjZmYjNhYiIsImVtYWlsIjoid2lsbGlhbUBnbWFpbC5jb20iLCJjbGllbnRfaWQiOiJVU0VSX0NMSUVOVF9BUFAifQ.RnsZl1zEIwAdFA-o4IRmt3L1pyFGevvkgZfbvkaS5P_RSZILmwBeIL8LPZZl4Q0h5FNRHvGJRuL1wQqIAsgG6RuPpnXPpT-WFWxOz4CxkjYtG80wUwh6Y3vulMYhxGTPSzpItHm-ck_Ie74A8vpGC0rCr13X0u2RDC2kzDQjyHHtZmZ5OgXY_Mi7wcj25_WBA_9p1gwiQMFxCJgilKPGuPA23lRe1DPnpKk_58fecwhFAlh6dTw7UNTdzMXgzsAWbqz0wlgfwzishPG6cLxwXmBDyWF027uWAJrpaiNcA9YBmV7dNb5iLNGesf1sZwp7PxV739sZukqz2ayVHQXS-A",
    "expires_in": 899,
    "scope": "role_admin",
    "email": "william@gmail.com",
    "jti": "a676080a-8a64-438d-882f-a45da2fd155f"
}


