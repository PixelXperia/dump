.class public Lcom/android/settings/security/SdCryptPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SdCryptPreferenceController.java"


# static fields
.field private static final PREF_KEY_ENCRYPTION_SD_CARD_PAGE:Ljava/lang/String; = "encryption_sd_card"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "encryption_sd_card"

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 25
    invoke-static {}, Lcom/sonymobile/settings/sdcardencryption/Utils;->isSdCardEncryptionSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encryption_sd_card"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-class v0, Lcom/android/settings/security/SdCryptKeeperSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sonymobile/settings/sdcardencryption/Utils;->updateSdCardEncryptionStatus(Landroid/content/Context;Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
