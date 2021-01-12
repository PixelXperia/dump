.class public Lcom/sonymobile/settings/sdcardencryption/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static isExternalSdCardEncrypted(Landroid/content/Context;)Z
    .locals 2

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "sdencrypt_on"

    .line 41
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static isSdCardEncryptionSupported()Z
    .locals 2

    const-string v0, "ro.sdcrypt.supported"

    const/4 v1, 0x1

    .line 37
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updateSdCardEncryptionStatus(Landroid/content/Context;Landroidx/preference/Preference;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 49
    invoke-static {p0}, Lcom/sonymobile/settings/sdcardencryption/Utils;->isExternalSdCardEncrypted(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f120efc

    .line 50
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f120f02

    .line 52
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    :goto_0
    return-void
.end method
