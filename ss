I reviewed the Trusted Endpoints KB articles and found content that could be removed:

Delete full article
https://help.duo.com/s/article/3657 

The article is fully certificate-based and describes deprecated certificate validation behavior only.
https://help.duo.com/s/article/3874 

The article is fully about manual certificate lifecycle cleanup on Windows.
https://help.duo.com/s/article/3875 

The article is fully about checking manual Duo device certificates on Windows.
https://help.duo.com/s/article/3981 

The article is fully about manual certificate cleanup on macOS.

https://help.duo.com/s/article/7229 

This is a migration guide away from certificates, so it is still useful for customers migrating old configurations.

https://help.duo.com/s/article/7279 

This is a migration guide away from certificate-based Trusted Endpoints and includes current supported alternatives.
https://help.duo.com/s/article/5220 

The article is centered on certificate-based Trusted Endpoints guidance for Chromebooks and no longer appears useful.


Keep article, remove certificate-specific text
https://help.duo.com/s/article/3455 

Delete this text (certificate-only Firefox flow):

To enable certificate collection on FireFox for MacOS, install the Duo Certifier. Once the Duo Certifier is installed on the device, open FireFox and navigate to: 

About:config

Accept the Risk and Continue.

Search for the following:

Security.enterprise_roots.enabled

Set the value to true

Close FireFox.

FireFox on MacOS will now be able to trigger the Duo Certifier and perform a certificate collection during a trust check.

Delete this text (Edge certificate prompt suppression):

By default, Edge will prompt to select a certificate during a trust check, to suppress the prompt on Edge Chromium for Windows 10, ensure the following registry path is on the device: HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Edge\AutoSelectCertificateForUrls

One of the values should have the following set as its data: {"pattern":"https://[*.]duosecurity.com/frame"", "filter":{}}

If the above is not set, perform the following command on the device:

reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Edge\AutoSelectCertificateForUrls" /v 1 /d "{\"pattern\":\"https://[*.]duosecurity.com/frame\\", \"filter\":{}}"

Note: Certificate-based Trusted Endpoint verification for manual certificate deployment reached end-of-life on October 7, 2024. Duo device certificates will no longer renew after October 2024. Learn more about migration options in the Duo Trusted Endpoints Certificate Migration Guide.


https://help.duo.com/s/article/4100 

Delete this note block:

Note: Certificate-based Trusted Endpoint verification reached end-of-life on October 7, 2024. Duo device certificates will no longer renew after October 2024. Migrate existing iOS Certificate Configuration management integrations to iOS Configuration. Learn more about the end-of-life timeline and migration options in the Duo Trusted Endpoints Certificate Migration Guide.


https://help.duo.com/s/article/6850 

Delete this note block:

Note: Certificate-based Trusted Endpoint verification for manual certificate deployment reached end-of-life on October 7, 2024. Duo device certificates will no longer renew after October 2024.  Learn more in our Duo Trusted Endpoints Certificate Migration Guide. We recommend transitioning mobile devices to using Duo Mobile for mobile device verification now.

Delete this certificate migration paragraph block:

Integrations that used certificates to check for trust on iOS devices need to be updated to use AppConfig. In October 2021, Duo released AppConfig-based versions of the following integrations:

Airwatch/Workspace ONE

Cisco Meraki Systems Manager

Jamf Pro

Microsoft Intune

MobileIron Cloud

MobileIron Core

Sophos Mobile

If you used a certificate-based configuration of one of these integrations, you need to update to the AppConfig version in order for iOS users to experience the updated authentication flow.


https://help.duo.com/s/article/7583 

Delete this unsupported-feature bullet:

Certificate-based Trusted Endpoints integrations. Recommended alternative: Applications using non-certificate methods such as Duo Desktop and Duo Mobile.

Keep as-is (no removal recommended)